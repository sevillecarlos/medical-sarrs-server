# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :medical_records do
        get 'medical_record_documents/show'
        get 'medical_record_documents/index'
        get 'medical_record_documents/create'
      end
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
      resources :sessions
      resources :categories
      resources :items
      resources :patients
      resources :appointments
      resources :medical_record
      namespace :medical_records do
        resources :medical_record_alergies
        resources :medical_record_ailments
        resources :medical_record_medicines
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
