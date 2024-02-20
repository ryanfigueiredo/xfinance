FactoryBot.define do
  factory :groups_finance_transactions do
    finance_transaction { create(:finance_transaction) }
    group { create(:group) }
  end
end