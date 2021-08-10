# frozen_string_literal: true

class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :patient_id
      t.string :first_name
      t.string :last_name
      t.string :birth_date
      t.string :patient_gender
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end
