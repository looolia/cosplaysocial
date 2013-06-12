class PhotosController < ApplicationController

  # GET /photos/1
  # GET /photos/1.json
  def show

    @photo = Refinery::PhotoGallery::Photo.find(params[:id])
    @photo_comments = @photo.comment_threads
    

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

end
