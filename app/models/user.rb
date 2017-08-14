class User < ApplicationRecord
  validates_uniqueness_of :email, :uid
  has_many :jobs
end
