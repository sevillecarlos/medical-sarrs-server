# frozen_string_literal: true

module Api
  module V1
    class MedicalRecordsAlergiesController < ApplicationController
      def create
        @medical_records_alergies = MedicalRecordsAlergy.new(medical_records_alergies_param)
        render json: true, status: 200 if @medical_records_alergies.save
      end

      def destroy
        @medical_records_alergies = MedicalRecordsAlergy.find(params[:id])
        render json: true, status: 200 if @medical_records_alergies.delete
      end

      private

      def medical_records_alergies_param
        params.permit(:alergy_detail, :alergy_to, :alergy_type, :medical_record_id)
      end
    end
  end
end
