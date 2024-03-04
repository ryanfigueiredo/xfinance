FactoryBot.define do
  factory :tags_finance_transactions do
    finance_transaction { create(:finance_transaction) }
    tag { create(:tag) }
  end
end