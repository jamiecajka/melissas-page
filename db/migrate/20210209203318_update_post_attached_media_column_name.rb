class UpdatePostAttachedMediaColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :attached_media, :picture
  end
end
