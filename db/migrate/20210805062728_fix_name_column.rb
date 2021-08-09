# frozen_string_literal: true

class FixNameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :sessions, :type, :user_type
  end
end
