class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.text :description

      t.timestamps
    end
    add_index :posts, [:user_id, :created_at, :title]
  end
end
