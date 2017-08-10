class Job < ApplicationRecord
  validates :title, :field, :key_skill, presence: true
end
