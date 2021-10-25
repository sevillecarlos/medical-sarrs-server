# frozen_string_literal: true

require 'test_helper'

module Api
  module V1
    class MedicalRecordsDocumentsControllerTest < ActionDispatch::IntegrationTest
      test 'should get show' do
        get api_v1_medical_records_documents_show_url
        assert_response :success
      end

      test 'should get create' do
        get api_v1_medical_records_documents_create_url
        assert_response :success
      end

      test 'should get delete' do
        get api_v1_medical_records_documents_delete_url
        assert_response :success
      end
    end
  end
end
