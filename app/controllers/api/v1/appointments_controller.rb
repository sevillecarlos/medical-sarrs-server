# frozen_string_literal: true

module Api
  module V1
    class AppointmentsController < ApplicationController
      def index
        @appointment = Appointment.all
        render json: @appointment, status: 200
      end

      def show; end

      def create
        @appointment = Appointment.new(appointment_params)
        render json: true if @appointment.save
      end

      def update
        @appointment = Appointment.find(params[:id])
        render json: true, status: 200 if @appointment.update(appointment_params)
      end

      def patch
        @appointment = Appointment.find(params[:id])
        render json: true, status: 200 if @appointment.patch(appointment_params[:status])
      end

      def destroy
        @appointment = Appointment.find(params[:id])
        render json: true, status: 200 if @appointment.delete
      end

      private

      def appointment_params
        params.require(:appointment).permit(:date, :time, :reason, :patient_id, :status)
      end
    end
  end
end
