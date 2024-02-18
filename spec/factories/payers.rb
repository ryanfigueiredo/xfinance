FactoryBot.define do
  factory :payer do
    name { "Myname" }
    account_transaction { create(:account_transaction) }
  end
end
