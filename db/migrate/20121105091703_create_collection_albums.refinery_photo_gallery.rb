# This migration comes from refinery_photo_gallery (originally 20120805131547)
class CreateCollectionAlbums < ActiveRecord::Migration
  def self.up
    create_table Refinery::PhotoGallery::CollectionAlbum.table_name do |t| #TODO primary id to false
      t.references :collection
      t.references :album
    end
  end

  def self.down
    drop_table Refinery::PhotoGallery::CollectionAlbum.table_name
  end
end
