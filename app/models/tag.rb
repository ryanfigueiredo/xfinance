class Tag < ApplicationRecord
  has_many :tags_finance_transactions
  has_many :finance_transactions, :through => :tags_finance_transactions

  validates :title, presence: true

  enum :kind, { revenue: 0, expense: 1, credit_card: 2 }, default: :revenue
end
