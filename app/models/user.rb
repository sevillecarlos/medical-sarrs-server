# frozen_string_literal: true

class User < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :user_type, presence: true
end
