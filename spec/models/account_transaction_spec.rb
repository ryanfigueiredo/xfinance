require 'rails_helper'

RSpec.describe AccountTransaction, type: :model do
  context 'associations' do
    it { should belong_to(:origin) }
    it { should have_many(:payers) }
  end
  
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:purchase_date) }
    it { should validate_presence_of(:real_amount) }

    it { should define_enum_for(:kind).with_values(revenue: 0, expense: 1) }
  end

  context 'custom validations' do
    let(:default_installments) { 'Cash' }
    let(:fake_amount) { '9.99' }

    subject { create(:account_transaction, installments: default_installments, real_amount: fake_amount) }

    it 'validate installments' do
      expect(subject.installments).to eq(default_installments)
    end

    it 'validate fake amount' do
      expect(subject.fake_amount).to eq(subject.real_amount)
    end
  end
end