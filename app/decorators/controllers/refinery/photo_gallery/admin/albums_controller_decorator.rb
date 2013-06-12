#encoding: UTF-8

Refinery::PhotoGallery::Admin::AlbumsController.class_eval do

  def create
    @album = Refinery::PhotoGallery::Album.new(params[:album])

    @album.update_attributes({:user_id => session["warden.user.refinery_user.key"][1][0]})

    if @album.save(params[:album])
      flash[:notice]= t('refinery.crudify.created',:what => "'#{@album.title}'" )

      redirect_to  refinery.upload_photo_gallery_admin_album_photos_path(@album)
    else
      render "new"
    end
  end

end