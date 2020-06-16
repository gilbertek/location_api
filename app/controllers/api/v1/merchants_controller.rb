class Api::V1::MerchantsController < ApplicationController
    # GET /merchants
  def index
    @merchants = Merchant.all
    render json: @merchants
  end

  # GET /merchant/:id
  def show
    @merchant = Merchant.find(params[:id])
    render json: @merchant
  end

  # POST /merchants
  def create
    @merchant = Merchant.new(merchant_params)

    if @merchant.save
      render json: @merchant
    else
      render json: { errors: 'Unable to create merchant. Please try again.' }, status: 400
    end
  end

  private

  def merchant_params
    params.permit(:merchant_name)
  end
end
