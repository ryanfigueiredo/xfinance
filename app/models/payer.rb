class Payer < ApplicationRecord
  belongs_to :account_transaction

  validates :name, presence: true
  validates :name, uniqueness: { scope: :account_transaction_id }
end
