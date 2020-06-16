require 'rails_helper'

RSpec.describe "Api::V1::Merchants", type: :request do
  describe 'Api/V1/merchants' do
    before do
      5.times { FactoryBot.create(:merchant) }
    end

    it 'returns a list of all merchants' do
      get api_v1_merchants_path

      expect(response).to be_successful
    end
  end
end
