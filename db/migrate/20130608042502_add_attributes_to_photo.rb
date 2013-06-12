class AddAttributesToPhoto < ActiveRecord::Migration
  def change
    add_column Refinery::PhotoGallery::Photo.table_name, :caption, :text
    add_column Refinery::PhotoGallery::Photo.table_name, :likes, :integer
    add_column Refinery::PhotoGallery::Photo.table_name, :exif, :boolean
    add_column Refinery::PhotoGallery::Photo.table_name, :width, :integer
    add_column Refinery::PhotoGallery::Photo.table_name, :height, :integer
    add_column Refinery::PhotoGallery::Photo.table_name, :camera_model, :string
    add_column Refinery::PhotoGallery::Photo.table_name, :shoot_datetime, :datetime
    add_column Refinery::PhotoGallery::Photo.table_name, :exposure_time, :string
    add_column Refinery::PhotoGallery::Photo.table_name, :f_number, :string
  end
end
