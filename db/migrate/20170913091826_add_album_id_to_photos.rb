class AddAlbumIdToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :album_id, foreign_key: true
  end
end
