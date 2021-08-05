# frozen_string_literal: true

class Session < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :user_type, presence: true
end
