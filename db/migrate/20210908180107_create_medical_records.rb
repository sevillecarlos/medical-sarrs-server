# frozen_string_literal: true

class CreateMedicalRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_records, &:timestamps
  end
end
