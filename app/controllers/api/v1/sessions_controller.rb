# frozen_string_literal: true

module Api
  module V1
    class SessionsController < ApplicationController
      def create
        hmac_secret = '$C21$'
        @user = User.find_by(username: session_params[:username])
        puts session_params
        if @user
          if @user.user_type == session_params[:user_type]
            if @user.password == session_params[:password]
              payload = {
                username: @user.username,
                first_name: @user.first_name,
                user_type: @user.user_type
              }
              token = JWT.encode payload, hmac_secret, 'HS256'
              render json: { token: token }, status: 200
            else
              render json: { reason: 'Incorrect Password' }, status: 400
            end
          else
            render json: { reason: 'Incorrect User Type' }, status: 400
          end
        else
          render json: { reason: 'User don\'t exist' }, status: 400
        end
      end

      def session_params
        params.require(:session).permit(:username, :password, :user_type)
      end
    end
  end
end
