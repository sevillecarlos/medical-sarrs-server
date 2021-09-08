# frozen_string_literal: true

class Patient < ApplicationRecord
  has_one :medical_record
end
