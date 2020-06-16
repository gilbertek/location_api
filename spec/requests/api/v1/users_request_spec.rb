require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do
  describe 'Api/V1/users' do
    before do
      5.times { FactoryBot.create(:user) }
    end

    it 'returns a list of all users' do
      get api_v1_users_path

      expect(response).to be_successful
      expect(JSON.parse(response.body).length).to equal(5)
    end
  end
end
