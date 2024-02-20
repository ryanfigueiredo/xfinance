class FinanceTransaction < ApplicationRecord
  has_many :payers_finance_transactions
  has_many :payers, :through => :payers_finance_transactions

  belongs_to :origin
  
  validates :title, presence: true
  validates :purchase_date, presence: true
  validates :real_amount, presence: true

  # before_save :validate_installments
  # before_save :validate_fake_amount

  enum :kind, { revenue: 0, expense: 1 }, default: :revenue
  
  def validate_installments
    self.installments = 'Cash' if self.installments.blank? 
  end

  def validate_fake_amount
    self.fake_amount = self.real_amount if self.fake_amount.blank?
  end
end
