require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      subject = FactoryBot.create(:user)
      expect(subject).to be_valid
    end
  end
end
