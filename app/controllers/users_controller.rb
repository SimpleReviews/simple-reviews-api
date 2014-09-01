class UsersController < ApplicationController
  before_action :authenticate, only: [:show]

  def show
    render json: @current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = AuthToken.issue_token({ user_id: @user.id })
      render json: { user: @user.id, token: token }, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end
