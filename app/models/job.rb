class Job < ApplicationRecord
  validates :title, :field, :key_skill, :description, presence: true
  belongs_to :creator, class_name: "User", :foreign_key => "user_id"
  has_many :applicants, class_name: "User"
end
