# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class UsersControllerTest < ActionDispatch::IntegrationTest
      test 'should get index' do
        get api_v1_users_index_url
        assert_response :success
      end

      test 'should get show' do
        get api_v1_users_show_url
        assert_response :success
      end
    end
  end
end
