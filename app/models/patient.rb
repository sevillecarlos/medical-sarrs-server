# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :appointments
  belongs_to :medical_record
end
