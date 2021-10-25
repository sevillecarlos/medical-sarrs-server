# frozen_string_literal: true

class RemovePatientToMedicalRecord < ActiveRecord::Migration[6.1]
  def change
    remove_reference :patients, :medical_record, null: false
  end
end
