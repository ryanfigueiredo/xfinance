require 'rails_helper'

RSpec.describe GroupsFinanceTransaction, type: :model do
  context 'associations' do
    it { should belong_to(:finance_transaction) }
    it { should belong_to(:group) }
  end
end