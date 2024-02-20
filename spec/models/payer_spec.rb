require 'rails_helper'

RSpec.describe Payer, type: :model do
  context 'associations' do
    it { should have_many(:finance_transactions) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
  end
end
