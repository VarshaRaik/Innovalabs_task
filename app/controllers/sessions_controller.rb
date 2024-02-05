class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        render json: { user_id: user.id, authentication_token: user.authentication_token }, status: :created
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
end
