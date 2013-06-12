# encoding: UTF-8

Refinery::PhotoGallery::Admin::PhotosController.class_eval do

  def create
    @photo = Refinery::PhotoGallery::Photo.new(params[:photo])
    
    @photo.file = params[:file]
    @photo.title = get_filename_part(params[:name])

    @photo.update_attributes({:user_id => session["warden.user.refinery_user.key"][1][0]})

    if @photo.save!
      render :partial=> 'form_fields', :locals => {:photo => @photo }
    else
      render :text =>  @photo.errors.full_messages.join(" "), :status=> 500
    end
  end

end