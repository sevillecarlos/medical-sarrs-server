# frozen_string_literal: true

class AddUserLogToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :user_log_create, :string
  end
end
