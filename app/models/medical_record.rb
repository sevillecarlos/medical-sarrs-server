# frozen_string_literal: true

class MedicalRecord < ApplicationRecord
  has_many :medical_record_ailments
  has_many :medical_record_alergies
  has_many :medical_record_medicines
  has_many :medical_record_documents
  has_many :appointments
end
