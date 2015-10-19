class RemoveNameAndEmailFromUserAndAddUsername < ActiveRecord::Migration
  def change
    remove_column(:users, :name)
    remove_column(:users, :email)

    add_column :users, :username, :string, :presence => true, :unique => true
  end
end
