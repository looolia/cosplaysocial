Refinery::User.class_eval do
  has_many :photos, :class_name => Refinery::PhotoGallery::Photo, :order=> "created_at ASC"
  has_many :albums, :class_name => Refinery::PhotoGallery::Album, :order=> "created_at ASC"

  accepts_nested_attributes_for :photos, :albums
end
