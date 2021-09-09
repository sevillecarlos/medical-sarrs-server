# frozen_string_literal: true

class AddMedicalRecorToMedicalRecordsDocument < ActiveRecord::Migration[6.1]
  def change
    add_reference :medical_records_documents, :medical_record, null: false, foreign_key: true
  end
end
