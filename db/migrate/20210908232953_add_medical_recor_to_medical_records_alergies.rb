# frozen_string_literal: true

class AddMedicalRecorToMedicalRecordsAlergies < ActiveRecord::Migration[6.1]
  def change
    add_reference :medical_records_alergies, :medical_record, null: false, foreign_key: true
  end
end
