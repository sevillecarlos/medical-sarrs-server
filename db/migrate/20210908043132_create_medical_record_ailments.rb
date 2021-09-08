# frozen_string_literal: true

class CreateMedicalRecordAilments < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_record_ailments, &:timestamps
  end
end
