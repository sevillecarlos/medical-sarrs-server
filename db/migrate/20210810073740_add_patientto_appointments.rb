# frozen_string_literal: true

class AddPatienttoAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :patient
  end
end
