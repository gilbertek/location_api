class Api::V1::UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/:id
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: { errors: 'Unable to create user. Please try again.' }, status: 400
    end
  end

  private

  def user_params
    params.permit(:first_name, :last_name)
  end
end
