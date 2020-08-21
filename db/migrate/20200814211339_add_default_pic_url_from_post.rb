class AddDefaultPicUrlFromPost < ActiveRecord::Migration[6.0]
  def change
    change_column_default :posts, :picture,  "/db/images/default.jpg"
  end
end
