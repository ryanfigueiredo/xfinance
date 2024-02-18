class Origin < ApplicationRecord
  belongs_to :account_transaction
  
  validates :title, presence: true
  validates :title, uniqueness: { scope: :account_transaction_id }
end
