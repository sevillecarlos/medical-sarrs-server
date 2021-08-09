# frozen_string_literal: true

require 'jwt'

module Api
  module V1
    class UsersController < ApplicationController
      def index; end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { user: @user.username, password: @user.password, type: @user.user_type }
        else
          render json: { error: @user.errors }, status: 400
        end
      end

      private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :user_type)
      end
    end
  end
end
