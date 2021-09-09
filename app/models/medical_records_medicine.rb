# frozen_string_literal: true

class MedicalRecordsMedicine < ApplicationRecord
  belongs_to :medical_record
end
