class Job < ApplicationRecord
  validates :title, :field, :key_skill, :description, :location, :uid, presence: true
  has_many :job_users
  has_many :applicants, through: :job_users, source: :user
end
