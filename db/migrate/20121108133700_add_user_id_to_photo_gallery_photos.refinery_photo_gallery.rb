class AddUserIdToPhotoGalleryPhotos < ActiveRecord::Migration

  def change
    add_column :refinery_photo_gallery_photos, :user_id, :integer
  end

end
