require 'rails_helper'

RSpec.describe Payer, type: :model do
  context 'validations' do
    it { should belong_to(:account_transaction) }
    it { should validate_presence_of(:name) }
    
    context 'uniqueness' do
      before { create(:payer) }

      it { should validate_uniqueness_of(:name).scoped_to(:account_transaction_id) }
    end
  end
end
