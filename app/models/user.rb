class User < ApplicationRecord
  validates :name, :email, :uid, presence: true
  has_many :job_users
  has_many :jobs, through: :job_users
end
