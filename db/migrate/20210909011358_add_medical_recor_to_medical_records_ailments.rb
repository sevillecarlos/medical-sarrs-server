# frozen_string_literal: true

class AddMedicalRecorToMedicalRecordsAilments < ActiveRecord::Migration[6.1]
  def change
    add_reference :medical_records_ailments, :medical_record, null: false, foreign_key: true
  end
end
