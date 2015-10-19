class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  belongs_to(
  :user,
  class_name: "User",
  foreign_key: :user_id,
  primary_key: :id
  )
end
