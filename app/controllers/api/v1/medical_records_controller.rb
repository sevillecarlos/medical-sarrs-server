# frozen_string_literal: true

module Api
  module V1
    class MedicalRecordsController < ApplicationController
      def show
        @medical_record = MedicalRecord.find(params[:id])
        render json: { medical_ailment: @medical_record.medical_records_ailment, medical_alergy: @medical_record.medical_records_alergy, medical_medicine: @medical_record.medical_records_medicine, medical_document: @medical_record.medical_records_document },
               status: 200
      end

      def index
        @medical_record = MedicalRecord.all
        render json: @medical_record, status: 200
      end

      def create
        @alergies = ActiveSupport::JSON.decode(params[:alergies])
        @ailments = ActiveSupport::JSON.decode(params[:ailments])
        @medicines = ActiveSupport::JSON.decode(params[:medicines])
        @documents = ActiveSupport::JSON.decode(params[:documents])
        @medical_records = MedicalRecord.new({ patient_id: medical_record_params[:patient_id],
                                               blood_type: medical_record_params[:blood_type], patient_photo: medical_record_params[:patient_photo] })
        if @medical_records.save
          @alergies.select do |alergy|
            MedicalRecordsAlergy.create({
                                          alergy_to: alergy['alergy_to'],
                                          alergy_detail: alergy['alergy_detail'],
                                          alergy_type: alergy['alergy_type'],
                                          medical_record_id: @medical_records[:id]

                                        })
          end
          @ailments.select do |ailment|
            MedicalRecordsAilment.create({
                                           ailment_to: ailment['ailment_to'],
                                           ailment_detail: ailment['ailment_detail'],
                                           ailment_type: ailment['ailment_type'],
                                           medical_record_id: @medical_records[:id]

                                         })
          end
          @medicines.select do |medicine|
            MedicalRecordsMedicine.create({
                                            medicine_type: medicine['medicine_type'],
                                            medicine_to: medicine['medicine_to'],
                                            medicine_detail: medicine['medicine_detail'],
                                            medical_record_id: @medical_records[:id]

                                          })
          end
          @documents.select do |document|
            MedicalRecordsDocument.create({
                                            document_type: document['document_type'],
                                            document_name: document['document_name'],
                                            document_detail: document['document_detail'],
                                            document_photo: document['document_photo'],
                                            document_date: document['document_date'],
                                            medical_record_id: @medical_records[:id]

                                          })
          end
          render json: true, status: 200
        end
      end

      def destroy
        if MedicalRecordsAilment.find_by({ medical_record_id: params[:id] }).delete && MedicalRecordsAlergy.find_by({ medical_record_id: params[:id] }).delete && MedicalRecordsDocument.find_by({ medical_record_id: params[:id] }).delete && MedicalRecordsMedicine.find_by({ medical_record_id: params[:id] }).delete
          @medical_record = MedicalRecord.find(params[:id])
          render json: true, status: 200 if @medical_record.delete

        end
      end

      private

      def medical_record_params
        params.permit(:patient_id, :patient_photo, :blood_type, alergies: [], ailments: [],
                                                                documents: [], medicines: [])
      end
    end
  end
end
