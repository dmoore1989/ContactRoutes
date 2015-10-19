class CreateGroup < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :user_id, add_index: true

      t.timestamps
    end

    create_table :contact_groupings do |t|
      t.integer :group_id, add_index: true
      t.integer :contact_id, add_index: true
    end
  end
end
