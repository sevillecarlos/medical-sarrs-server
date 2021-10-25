# frozen_string_literal: true

class MedicalRecordsDocumentsSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :document_type, :document_name, :document_detail, :document_date, :document_photo, :medical_record_id
  def document_photo
    if object.document_photo.attached?
      {
        url: rails_blob_url(object.document_photo)
      }
    end
  end
end
