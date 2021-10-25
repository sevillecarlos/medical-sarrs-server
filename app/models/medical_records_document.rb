# frozen_string_literal: true

class MedicalRecordsDocument < ApplicationRecord
  belongs_to :medical_record
  has_many_attached :document_photo
end
