class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :title, presence: true
      t.text :body, presence: true
      t.integer :author_id, presence: true, index: true
      t.references :commentable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
