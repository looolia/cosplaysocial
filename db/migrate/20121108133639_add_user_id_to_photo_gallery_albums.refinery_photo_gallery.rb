class AddUserIdToPhotoGalleryAlbums < ActiveRecord::Migration

  def change
    add_column :refinery_photo_gallery_albums, :user_id, :integer
  end

end
