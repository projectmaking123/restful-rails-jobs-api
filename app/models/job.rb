class Job < ApplicationRecord
  validates :title, :field, :key_skill, :description, :uid, presence: true
end
