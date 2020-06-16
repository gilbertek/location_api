require 'rails_helper'

RSpec.describe Visit, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:merchant) }
  end
end
