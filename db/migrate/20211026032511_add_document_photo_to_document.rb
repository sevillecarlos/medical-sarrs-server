class AddDocumentPhotoToDocument < ActiveRecord::Migration[6.1]
  def change
    add_column :medical_records_documents, :document_photo, :string
  end
end
