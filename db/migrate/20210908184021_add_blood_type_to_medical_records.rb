# frozen_string_literal: true

class AddBloodTypeToMedicalRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :medical_records, :blood_type, :string
  end
end
