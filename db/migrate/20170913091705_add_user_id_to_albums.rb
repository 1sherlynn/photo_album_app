class AddUserIdToAlbums < ActiveRecord::Migration[5.1]
  def change
    add_reference :albums, :user_id, foreign_key: true
  end
end
