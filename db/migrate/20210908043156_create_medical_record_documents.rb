# frozen_string_literal: true

class CreateMedicalRecordDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_record_documents, &:timestamps
  end
end
