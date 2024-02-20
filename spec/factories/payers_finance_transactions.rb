FactoryBot.define do
  factory :payers_finance_transactions do
    finance_transaction { create(:finance_transaction) }
    payer { create(:payer) }
  end
end