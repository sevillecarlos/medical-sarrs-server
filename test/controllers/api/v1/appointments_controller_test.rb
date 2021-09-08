# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class AppointmentsControllerTest < ActionDispatch::IntegrationTest
      test 'should get index' do
        get api_v1_appointments_index_url
        assert_response :success
      end

      test 'should get show' do
        get api_v1_appointments_show_url
        assert_response :success
      end

      test 'should get create' do
        get api_v1_appointments_create_url
        assert_response :success
      end

      test 'should get update' do
        get api_v1_appointments_update_url
        assert_response :success
      end
    end
  end
end
