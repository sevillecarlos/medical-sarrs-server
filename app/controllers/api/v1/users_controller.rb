# frozen_string_literal: true

require 'jwt'

module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        @staff_user = @users.select { |user| user.user_type == 'staff' }
        render json: @staff_user, status: 200
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { reason: 'You created user successfully' }, status: 200
        else
          render json: { error: @user.errors }, status: 400
        end
      end

      def update
        @user = User.find(params[:id])
        render json: true, status: 200 if @user.update(user_params)
      end

      def destroy
        @user = User.find(params[:id])
        render json: true, status: 200 if @user.delete
      end

      private

      def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :user_type)
      end
    end
  end
end
