class Job < ApplicationRecord
  validates :title, :body, presence: true
end
