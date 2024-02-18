require 'rails_helper'

RSpec.describe Origin, type: :model do
  context 'validations' do
    it { should belong_to(:account_transaction) }
    it { should validate_presence_of(:title) }
    
    context 'uniqueness' do
      before { create(:origin) }

      it { should validate_uniqueness_of(:title).scoped_to(:account_transaction_id) }
    end
  end
end
