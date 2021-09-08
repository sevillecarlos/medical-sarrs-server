# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class MedicalRecordAlergiesControllerTest < ActionDispatch::IntegrationTest
      test 'should get show' do
        get api_v1_medical_record_alergies_show_url
        assert_response :success
      end

      test 'should get index' do
        get api_v1_medical_record_alergies_index_url
        assert_response :success
      end

      test 'should get create' do
        get api_v1_medical_record_alergies_create_url
        assert_response :success
      end
    end
  end
end
