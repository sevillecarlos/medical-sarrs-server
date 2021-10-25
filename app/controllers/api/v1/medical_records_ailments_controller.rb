# frozen_string_literal: true

module Api
  module V1
    class MedicalRecordsAilmentsController < ApplicationController
      def show; end

      def create
        @medical_records_ailment = MedicalRecordsAilment.new(medical_records_ailments_param)
        render json: true, status: 200 if @medical_records_ailment.save
      end

      def destroy
        @medical_records_ailment = MedicalRecordsAilment.find(params[:id])
        render json: true, status: 200 if @medical_records_ailment.delete
      end

      private

      def medical_records_ailments_param
        params.permit(:ailment_type, :ailment_to, :ailment_detail, :medical_record_id)
      end
    end
  end
end
