# frozen_string_literal: true

module Api
  module V1
    class SessionsController < ApplicationController
      def create
        hmac_secret = '$C21$'
        @user = User.find_by(username: params[:username])
        payload = {
          username: @user.username,
          first_name: @user.first_name,
          user_type: @user.user_type
        }
        if @user
          if @user.password == params[:password]
            token = JWT.encode payload, hmac_secret, 'HS256'
            render json: { token: token }, status: 200
          else
            render json: { error: 'Incorrect password' }, status: 400
          end
        else
          render json: { error: 'User don\'t exist' }, status: 400
        end
      end

      def session_params
        params.require(:user).permit(:username, :password, :user_type)
      end
    end
  end
end
