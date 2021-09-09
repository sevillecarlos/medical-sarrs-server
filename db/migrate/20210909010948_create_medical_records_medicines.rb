# frozen_string_literal: true

class CreateMedicalRecordsMedicines < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_records_medicines do |t|
      t.string :medicine_type
      t.string :medicine_to
      t.string :medicine_detail

      t.timestamps
    end
  end
end
