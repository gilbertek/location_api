class Api::V1::VisitsController < ApplicationController

  def index
    query_string = params[:searchString]

    if query_string.blank?
      @visits = Visit.all
    else
      @visits = search(query_string)
    end

    render json: @visits
  end

  # GET /visit/:id
  def show
    @visit = Visit.find(params[:id])
    render json: @visit
  end

  def create
    @visit = Visit.new(visit_params)

    if @visit.save
      render(json: @visit, serializer: VisitSerializer)
    else
      render json: {errors: 'Unable to save visit. Please try again.'}, status: 400
    end
  end

  private

  def search(query_string)
    Visit.joins(:user, :merchant).where('merchants.merchant_name ILIKE ?', "%#{query_string}%")
  end

  def visit_params
    params.require(:merchant).permit(:merchant_id).merge(user_id: params[:user_id])
  end
end
