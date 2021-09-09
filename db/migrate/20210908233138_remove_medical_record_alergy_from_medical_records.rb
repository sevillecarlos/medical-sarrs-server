# frozen_string_literal: true

class RemoveMedicalRecordAlergyFromMedicalRecords < ActiveRecord::Migration[6.1]
  def change
    remove_reference :medical_records, :medical_records_alergies, null: false
  end
end
