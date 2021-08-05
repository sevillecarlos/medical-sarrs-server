# frozen_string_literal: true

class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :username
      t.string :password
      t.string :user_type

      t.timestamps
    end
  end
end
