class RecreatePostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.timestamps
      t.text :body, null: false
      t.string :picture, default: 'db/images/default.jpeg'
    end
  end
end
