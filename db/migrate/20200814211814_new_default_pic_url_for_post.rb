class NewDefaultPicUrlForPost < ActiveRecord::Migration[6.0]
  def change
    change_column_default :posts, :picture,  "default.jpg"
  end
end
