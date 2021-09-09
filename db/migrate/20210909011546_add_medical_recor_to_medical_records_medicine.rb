# frozen_string_literal: true

class AddMedicalRecorToMedicalRecordsMedicine < ActiveRecord::Migration[6.1]
  def change
    add_reference :medical_records_medicines, :medical_record, null: false, foreign_key: true
  end
end
