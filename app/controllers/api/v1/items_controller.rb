# frozen_string_literal: true

module Api
  module V1
    class ItemsController < ApplicationController
      def index
        @item = Item.all
        render json: @item, status: 200
      end

      def create
        @item = Item.new(item_params)
        render json: @item, status: 200 if @item.save
      end

      def update
        @item = Item.find(params[:id])
        render json: true, status: 200 if @item.update(item_params)
      end

      def patch
        @item = Item.find(params[:id])
        render json: true, status: 200 if @item.patch(quantity: item_params[:quantity])
      end

      def destroy
        @item = Item.find(params[:id])
        render json: true, status: 200 if @item.delete
      end

      private

      def item_params
        params.require(:item).permit(:name, :quantity, :detail, :category_id, :user_log_create, :user_log_update)
      end
    end
  end
end
