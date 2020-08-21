class RemoveDefaultPicUrlFromPost < ActiveRecord::Migration[6.0]
  def change
    change_column_default :posts, :picture, nil
  end
end
