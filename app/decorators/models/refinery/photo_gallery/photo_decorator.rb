Refinery::PhotoGallery::Photo.class_eval do
  
  belongs_to :user, :class_name => 'Refinery::User', :foreign_key => :user_id
  
  attr_accessible :user_id

end