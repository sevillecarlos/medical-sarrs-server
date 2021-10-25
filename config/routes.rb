# frozen_string_literal: true

Rails.application.routes.draw do
  default_url_options host: 'localhost:5000'
  namespace :api do
    namespace :v1 do
      resources :users
      resources :sessions
      resources :categories
      resources :items
      resources :patients
      resources :appointments
      resources :medical_records
      resources :medical_records_alergies
      resources :medical_records_ailments
      resources :medical_records_medicines
      resources :medical_records_documents
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
