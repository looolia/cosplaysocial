Refinery::Admin::ImagesController.class_eval do
  
  before_filter :find_this_user_images

  def new
    @image = ::Refinery::Image.new if @image.nil?

    @image.update_attributes({:user_id => session["warden.user.refinery_user.key"][1][0]})

    @url_override = refinery.admin_images_path(:dialog => from_dialog?)
  end

  def create
    @images = []
    begin
      unless params[:image].present? and params[:image][:image].is_a?(Array)
        @images << (@image = ::Refinery::Image.create(params[:image], :user_id => session["warden.user.refinery_user.key"][1][0]))
      else
        params[:image][:image].each do |image|
          @images << (@image = ::Refinery::Image.create(:image => image, :user_id => session["warden.user.refinery_user.key"][1][0]))
        end
      end
    rescue Dragonfly::FunctionManager::UnableToHandle
      logger.warn($!.message)
      @image = ::Refinery::Image.new
    end

    unless params[:insert]
      if @images.all?(&:valid?)
        flash.notice = t('created', :scope => 'refinery.crudify', :what => "'#{@images.map(&:title).join("', '")}'")
        if from_dialog?
          @dialog_successful = true
          render :nothing => true, :layout => true
        else
          redirect_to refinery.admin_images_path
        end
      else
        self.new # important for dialogs
        render :action => 'new'
      end
    else
      # if all uploaded images are ok redirect page back to dialog, else show current page with error
      if @images.all?(&:valid?)
        @image_id = @image.id if @image.persisted?
        @image = nil

        self.insert
      end
    end
  end

  protected
  
    def find_this_user_images
      @images = Refinery::Image.where(:user_id => session["warden.user.refinery_user.key"][1][0])
    end

end
