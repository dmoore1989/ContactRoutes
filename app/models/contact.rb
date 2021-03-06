class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  belongs_to(
  :user,
  class_name: "User",
  foreign_key: :user_id,
  primary_key: :id
  )

  has_many(
  :contact_shares,
  class_name: "ContactShare",
  foreign_key: :contact_id,
  primary_key: :id
  )

  has_many(
  :shared_users,
  through: :contact_shares,
  source: :user
  )

  has_many :contact_groupings

  has_many :comments, as: :commentable
  has_many :groups, through: :contact_groupings, source: :group
end
