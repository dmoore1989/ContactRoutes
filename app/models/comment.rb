class Comment < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  belongs_to(
  :author,
  foreign_key: :author_id,
  primary_key: :id,
  class_name: 'User'
  )

  belongs_to :commentable, polymorphic: true
end
