require 'rails_helper'

RSpec.describe Merchant, type: :model do
  describe 'Validations' do
    it 'is not valid with missing name' do
      expect(Merchant.new).to_not be_valid
    end

    it 'is valid when name is present' do
      subject = FactoryBot.create(:merchant, merchant_name: 'Starbuck')
      expect(subject).to be_valid
    end
  end
end
