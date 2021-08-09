# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class ItemsControllerTest < ActionDispatch::IntegrationTest
      test 'should get show' do
        get api_v1_items_show_url
        assert_response :success
      end

      test 'should get index' do
        get api_v1_items_index_url
        assert_response :success
      end

      test 'should get create' do
        get api_v1_items_create_url
        assert_response :success
      end

      test 'should get delete' do
        get api_v1_items_delete_url
        assert_response :success
      end

      test 'should get update' do
        get api_v1_items_update_url
        assert_response :success
      end
    end
  end
end
