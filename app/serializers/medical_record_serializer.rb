# frozen_string_literal: true

class MedicalRecordSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :patient_id, :blood_type, :patient_photo
  def patient_photo
    if object.patient_photo.attached?
      {
        url: rails_blob_url(object.patient_photo)
      }
    end
  end
end
