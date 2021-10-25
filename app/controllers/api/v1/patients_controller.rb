# frozen_string_literal: true

module Api
  module V1
    class PatientsController < ApplicationController
      def index
        @patients = Patient.all
        render json: @patients, status: 200
      end

      def show
        @patient = Patient.find(params[:id])
        if @patient
          render json: @patient, status: 200
        else
          render json: { error: 'Patient not found' }, status: 400
        end
      end

      def create
        @patient = Patient.create(patient_params)
        render json: { reason: 'You created patient successfully' }, status: 200
      end

      def update
        @patient = Patient.find(params[:id])
        render json: true, status: 200 if @patient.update(patient_params)
      end

      private

      def patient_params
        params.require(:patient).permit(:patient_id, :first_name, :last_name, :birth_date, :patient_gender, :phone_number,
                                        :address)
      end
    end
  end
end
