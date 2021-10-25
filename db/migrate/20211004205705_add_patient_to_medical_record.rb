# frozen_string_literal: true

class AddPatientToMedicalRecord < ActiveRecord::Migration[6.1]
  def change
    # frozen_string_literal: true
    add_reference :medical_records, :patient
  end
end
