class Payer < ApplicationRecord
  has_many :payers_finance_transactions
  has_many :finance_transactions, :through => :payers_finance_transactions

  validates :name, presence: true
end
