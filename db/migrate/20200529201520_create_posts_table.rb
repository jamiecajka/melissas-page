class CreatePostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.timestamps
      t.text :body, null: false
    end
  end
end
