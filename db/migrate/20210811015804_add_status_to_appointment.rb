# frozen_string_literal: true

class AddStatusToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :status, :boolean
  end
end
