class FixDefaultLocationOnPost < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :picture, :string, default: "db/images/default.jpg"
  end
end
