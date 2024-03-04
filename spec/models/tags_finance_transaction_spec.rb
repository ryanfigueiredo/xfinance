require 'rails_helper'

RSpec.describe TagsFinanceTransaction, type: :model do
  context 'associations' do
    it { should belong_to(:finance_transaction) }
    it { should belong_to(:tag) }
  end
end