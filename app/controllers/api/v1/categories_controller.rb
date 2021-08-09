# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < ApplicationController
      def index
        @categories = Category.all
        render json: @categories, status: 200
      end

      def show; end

      def create; end
    end
  end
end
