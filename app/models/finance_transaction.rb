class FinanceTransaction < ApplicationRecord
  has_many :payers_finance_transactions, dependent: :destroy
  has_many :payers, :through => :payers_finance_transactions

  has_many :groups_finance_transactions, dependent: :destroy
  has_many :groups, :through => :groups_finance_transactions

  validates :title, presence: true
  validates :real_amount, presence: true

  before_validation :validate_installments
  before_validation :set_purchase_date

  accepts_nested_attributes_for :payers_finance_transactions
  accepts_nested_attributes_for :groups_finance_transactions

  enum :kind, { revenue: 0, expense: 1 }, default: :expense

  scope :per_month, ->(month) {
    includes(:payers, :groups)
    .joins(:groups)
    .joins(:groups_finance_transactions)
    .where(groups_finance_transactions: { month: month })
  }

  scope :by_groups, -> {
    group_by do |finance_transaction|
      [finance_transaction.groups.first.title, finance_transaction.groups.first.id]
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
end
