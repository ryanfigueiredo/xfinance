require 'rails_helper'

RSpec.describe Origin, type: :model do
  context 'associations' do
    it { should have_many(:account_transactions) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }
  end
end
