class PayersFinanceTransaction < ApplicationRecord
  belongs_to :finance_transaction
  belongs_to :payer
end