require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'associations' do
    it { should have_many(:finance_transactions) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }

    it { should define_enum_for(:kind).with_values(revenue: 0, expense: 1, credit_card: 2) }
  end
end
