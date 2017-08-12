class Job < ApplicationRecord
  validates :title, :field, :key_skill, :description, presence: true
  belongs_to :user
end
