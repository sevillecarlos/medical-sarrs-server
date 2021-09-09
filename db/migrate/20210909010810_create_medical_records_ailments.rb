# frozen_string_literal: true

class CreateMedicalRecordsAilments < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_records_ailments do |t|
      t.string :ailment_type
      t.string :ailment_to
      t.string :ailment_detail

      t.timestamps
    end
  end
end
