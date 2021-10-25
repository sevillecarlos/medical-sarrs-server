# frozen_string_literal: true

module Api
  module V1
    class MedicalRecordsDocumentsController < ApplicationController
      def show
        @patientMedicalRecord = MedicalRecord.find(params[:id])
        p '**************************************'
        p @patientMedicalRecord
        p '**************************************'
        render json: @patientMedicalRecord.medical_records_documents, status: 200 if @patientMedicalRecord
      end

      def create
        @medical_records_documents = MedicalRecordsDocument.new(medical_records_document_params)
        render json: true, status: 200 if @medical_records_documents.save
      end

      def destroy
        @medical_records_document = MedicalRecordsDocument.find(params[:id])
        render json: true, status: 200 if @medical_records_document.delete
      end

      private

      def medical_records_document_params
        params.permit(:document_type, :document_name, :document_date, :document_detail, :document_photo,
                      :medical_record_id)
      end
    end
  end
end
