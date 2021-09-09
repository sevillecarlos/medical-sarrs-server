# frozen_string_literal: true

class CreateMedicalRecordsAlergies < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_records_alergies do |t|
      t.string :alergy_detail
      t.string :alergy_to
      t.string :alergy_type

      t.timestamps
    end
  end
end
