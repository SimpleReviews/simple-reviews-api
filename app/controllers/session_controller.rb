class SessionController < ApplicationController

  def create
    user = User.where("email = ?", params[:email]).first
    if user && user.authenticate(params[:password])
      token = AuthToken.issue_token({ user_id: user.id })
      render json: { user: user.id, token: token }, status: :created
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

end
