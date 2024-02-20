class Origin < ApplicationRecord
  belongs_to :payer
  has_many :finance_transactions
  
  validates :title, presence: true

  enum :kind, { revenue: 0, expense: 1, credit_card: 2 }, default: :revenue
end
