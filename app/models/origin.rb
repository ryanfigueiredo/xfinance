class Origin < ApplicationRecord
  has_many :account_transactions
  
  validates :title, presence: true
end
