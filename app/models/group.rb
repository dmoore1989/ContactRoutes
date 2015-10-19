class Group < ActiveRecord::Base
  belongs_to :user
  has_many :contact_groupings
  has_many :contacts, through: :contact_groupings, source: :contact
end
