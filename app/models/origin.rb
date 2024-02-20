class Origin < ApplicationRecord
  has_many :account_transactions
  
  validates :title, presence: true

  enum :kind, { revenue: 0, expense: 1, credit_card: 2 }, default: :revenue
end
