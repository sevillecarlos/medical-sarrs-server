# frozen_string_literal: true

class AddMedicalRecordToPatients < ActiveRecord::Migration[6.1]
  def change
    add_reference :patients, :medical_record
  end
end
