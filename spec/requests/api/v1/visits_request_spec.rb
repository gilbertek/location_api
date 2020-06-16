require 'rails_helper'

RSpec.describe "Api::V1::Visits", type: :request do
  let(:user) { FactoryBot.create(:user) }
  let(:merchant) { FactoryBot.create(:merchant) }
  let(:params) { { merchant: {
        merchant_id: merchant.id,
        merchant_name: merchant.merchant_name } } }

  let(:invalid_params) { { merchant: { merchant_id: nil, merchant_name: '' } } }

  describe '#POST Api/V1/users/:id/visits' do
    it 'saves visit successfully' do
      expect {
        post api_v1_user_visits_path(user), params: params
      }.to change(Visit, :count)
    end

    context 'when params is invalid' do
      it 'does not save visit' do
        expect {
          post api_v1_user_visits_path(user), params: invalid_params
        }.to_not change(Visit, :count)
      end
    end
  end
end
