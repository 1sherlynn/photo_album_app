class RenameColumnUserIdIdInAlbumsToUserId < ActiveRecord::Migration[5.1]
  def change
  	rename_column :albums, :user_id_id, :user_id
    rename_column :comments, :user_id_id, :user_id
    rename_column :photos, :album_id_id, :album_id
  end
end
