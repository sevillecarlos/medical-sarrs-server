# frozen_string_literal: true

class Patient < ApplicationRecord
  has_many :appointments
  validates :patient_id, presence: true, uniqueness: true
end
