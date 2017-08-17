class Job < ApplicationRecord
  validates :title, :field, :key_skill, :description, :location, :uid, presence: true
end
