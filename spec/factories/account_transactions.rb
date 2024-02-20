FactoryBot.define do
  factory :account_transaction do
    kind { 0 }
    title { "MyTransaction" }
    purchase_date { "2024-02-18" }
    installments { "Cash" }
    due_date { "2024-02-18" }
    real_amount { "9.99" }
    fake_amount { real_amount }
    origin { create(:origin) }
  end
end
