
class CommentsController < ApplicationController
  def create
    @photo = Refinery::PhotoGallery::Photo.find(params[:comment][:commentable_id])
    #@user_who_commented = Refinery::User.where(:id => session["warden.user.refinery_user.key"][1][0]).first 
    #@comment = Comment.build_from(@photo, @user_who_commented.id, "Comment!" )

    @comment = Comment.build_from( @photo, params[:comment][:user_id], params[:comment][:body] )
    @comment.save!
    
    redirect_to photo_path(@photo)
    #if @comment.save
    #  redirect_to @photo
    #end
  end
end
