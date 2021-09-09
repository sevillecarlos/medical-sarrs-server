# frozen_string_literal: true

class CreateMedicalRecordsDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_records_documents do |t|
      t.string :document_type
      t.string :document_name
      t.string :document_detail
      t.string :document_date

      t.timestamps
    end
  end
end
