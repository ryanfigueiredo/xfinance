class FinanceTransaction < ApplicationRecord
  has_many :payers_finance_transactions, dependent: :destroy
  has_many :payers, :through => :payers_finance_transactions

  has_many :tags_finance_transactions, dependent: :destroy
  has_many :tags, :through => :tags_finance_transactions

  validates :title, presence: true
  validates :real_amount, presence: true
  before_validation :set_month

  before_validation :validate_installments
  before_validation :set_purchase_date

  accepts_nested_attributes_for :payers_finance_transactions
  accepts_nested_attributes_for :tags_finance_transactions

  enum :kind, { revenue: 0, expense: 1 }, default: :expense

  scope :per_month, ->(month) {
    includes(:payers, :tags)
    .where(month: month)
  }

  scope :by_tags, -> {
    group_by do |finance_transaction|
      [finance_transaction.tags.first.title, finance_transaction.tags.first.id]
    end
  }

  def validate_installments
    self.installments = 'Cash' if self.installments.blank?
  end

  def validate_fake_amount
    self.fake_amount = self.real_amount if self.fake_amount.blank?
  end

  def set_purchase_date
    self.purchase_date = Date.today if self.purchase_date.nil?
  end

  def set_month
    if self.month.nil?
      self.month = self.purchase_date.strftime("%B").downcase
    else
      self.month = month.downcase
    end
  end
end
