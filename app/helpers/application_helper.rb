module ApplicationHelper

  def refresh_homepage
    
    @photo_of_the_day_album = Refinery::PhotoGallery::Album.where(:id => "1").first
    unless @photo_of_the_day_album.nil?
      @photo_of_the_day_latest = @photo_of_the_day_album.photos.find(:all, :order => "created_at DESC", :limit => 1)#
    end

    @photo_series_of_the_day_album = Refinery::PhotoGallery::Album.where(:id => "2").first
    unless @photo_series_of_the_day_album.nil?
      @photo_series_of_the_day_latest = @photo_series_of_the_day_album.photos.find(:all, :order => "created_at DESC", :limit => 1)
    end

    @editors_choice_album = Refinery::PhotoGallery::Album.where(:id => "3").first
    unless @editors_choice_album.nil?
      @editors_choice_latest = @editors_choice_album.photos.find(:all, :order => "created_at DESC", :limit => 6)
    end

    @topical_album = Refinery::PhotoGallery::Album.where(:id => "4").first
    unless @topical_album.nil?
      @topical_latest = @topical_album.photos.find(:all, :order => "created_at DESC", :limit => 12)
    end

  end

  def user_signed_in?
    if session["warden.user.refinery_user.key"]
      return true
    else
      return false
    end
  end

  def album_last_photo(album_id)
    @album = Refinery::PhotoGallery::Album.where(:id => album_id).first
    unless @album.nil?
      @last_photo = @album.photos.find(:all, :order => "created_at DESC", :limit => 1).first
    end
    return @last_photo
  end

  def user_is_admin?
    @user = Refinery::User.where(:id => session["warden.user.refinery_user.key"][1][0]).first
    if @user.has_role?(:superuser)
      return true
    else 
      return false
     end
  end

end
