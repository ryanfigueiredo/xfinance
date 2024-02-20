class Group < ApplicationRecord
  has_many :groups_finance_transactions
  has_many :finance_transactions, :through => :groups_finance_transactions
  
  validates :title, presence: true

  enum :kind, { revenue: 0, expense: 1, credit_card: 2 }, default: :revenue
end
