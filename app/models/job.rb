class Job < ApplicationRecord
  validates :title, :field, :key_skill, :description, presence: true
end
