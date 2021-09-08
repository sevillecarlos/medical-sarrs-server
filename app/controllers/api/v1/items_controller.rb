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
        if @item.save
          render json: @item, status: 200
        else
          render json: { reason: 'That name already exist' }, status: 400
        end
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
        @item =  Item.find(params[:id])
        @items = Item.all
        p @item
        render json: true, status: 200 if @item.delete
      end

      private

      def item_params
        params.require(:item).permit(:name, :quantity, :detail, :category_id)
      end
    end
  end
end
