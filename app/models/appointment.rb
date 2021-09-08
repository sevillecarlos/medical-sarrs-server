# frozen_string_literal: true

class Appointment < ApplicationRecord
  belongs_to :medical_record
end
