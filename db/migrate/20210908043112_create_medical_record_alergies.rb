# frozen_string_literal: true

class CreateMedicalRecordAlergies < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_record_alergies, &:timestamps
  end
end
