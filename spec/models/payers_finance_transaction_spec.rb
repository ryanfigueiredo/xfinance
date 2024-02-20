require 'rails_helper'

RSpec.describe PayersFinanceTransaction, type: :model do
  context 'associations' do
    it { should belong_to(:finance_transaction) }
    it { should belong_to(:payer) }
  end
end