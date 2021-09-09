# frozen_string_literal: true

class MedicalRecord < ApplicationRecord
  has_one :patient
  has_one_attached :patient_photo
  has_many :medical_records_alergy
  has_many :medical_records_ailment
  has_many :medical_records_medicine
  has_many :medical_records_document
end
