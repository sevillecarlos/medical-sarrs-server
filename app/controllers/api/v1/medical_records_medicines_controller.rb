# frozen_string_literal: true

module Api
  module V1
    class MedicalRecordsMedicinesController < ApplicationController
      def show; end

      def create
        @medical_records_medicine = MedicalRecordsMedicine.new(medical_records_medicines_param)
        render json: true, status: 200 if @medical_records_medicine.save
      end

      def destroy
        @medical_records_medicine = MedicalRecordsMedicine.find(params[:id])
        render json: true, status: 200 if @medical_records_medicine.delete
      end

      private

      def medical_records_medicines_param
        params.permit(:medicine_type, :medicine_to, :medicine_detail, :medical_record_id)
      end
    end
  end
end
