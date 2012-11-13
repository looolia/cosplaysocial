module ApplicationHelper

  def refresh_homepage
    
    @photo_of_the_day_album = Refinery::PhotoGallery::Album.where(:id => "1").first
    @photo_of_the_day_latest = @photo_of_the_day_album.photos.find(:all, :order => "created_at DESC", :limit => 1)

    @photo_series_of_the_day_album = Refinery::PhotoGallery::Album.where(:id => "2").first
    @photo_series_of_the_day_latest = @photo_series_of_the_day_album.photos.find(:all, :order => "created_at DESC", :limit => 1)
    
    @editors_choice_album = Refinery::PhotoGallery::Album.where(:id => "3").first
    @editors_choice_latest = @editors_choice_album.photos.find(:all, :order => "created_at DESC", :limit => 6)

    @topical_album = Refinery::PhotoGallery::Album.where(:id => "4").first
    @topical_latest = @topical_album.photos.find(:all, :order => "created_at DESC", :limit => 8)

    puts "!!!!!!!!!"
    puts "REFRESHED"
    puts "!!!!!!!!!"
  end

end
