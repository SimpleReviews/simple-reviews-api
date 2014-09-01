class ApplicationController < ActionController::API
  include ActionController::StrongParameters

  private

  def authenticate
    begin
      token = request.headers['Authorization'].split(' ').last
      payload = AuthToken.valid?(token)
      @current_user = User.find(payload[0]['user_id'])
    rescue
      render json: { error: 'Authorization header not valid'}, status: :unauthorized
    end
  end
end
