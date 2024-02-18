FactoryBot.define do
  factory :origin do
    title { "MyOrigin" }
    payment_date { "2024-02-18" }
    account_transaction { create(:account_transaction) }
  end
end
