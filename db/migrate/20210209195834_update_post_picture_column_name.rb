class UpdatePostPictureColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :picture, :attached_media
    change_column_default(:posts, :attached_media, nil)
  end
end
