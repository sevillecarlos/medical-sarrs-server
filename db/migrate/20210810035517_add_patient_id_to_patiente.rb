# frozen_string_literal: true

class AddPatientIdToPatiente < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :patient_id, :string
  end
end
