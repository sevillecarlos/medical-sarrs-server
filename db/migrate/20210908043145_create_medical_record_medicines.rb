# frozen_string_literal: true

class CreateMedicalRecordMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_record_medicines, &:timestamps
  end
end
