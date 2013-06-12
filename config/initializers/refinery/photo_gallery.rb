Refinery::PhotoGallery.configure do |config|
  # Max file size of uploaded image
  # config.max_file_size = "10mb"

  # Turn on/off client side resizing. If true, photo will be resized 2 times - on client side to accelerate transmision time, and  also on server side to generate thumbs.
  # If you want to achieve better quality, choose false.
  # config.client_side_resize = true

  # Params for client side resizing. E.g:  {:width => 950, :height=> 950, :quality=> 100} 
  # This dimmensions should be equal with config.single_dimensions
  # config.client_side_resize_params = {:width=>950, :height=>950, :quality=>100}

  # Locale name for Plupload. Put your locale file in /app/assets/javascripts/refinery/photo_gallery/admin/plupload/i18n/ and write here filename WITHOUT file extension. E.g: cs
  # config.plupload_locale = "en"

  # Case insensitive extension white list for carrierwave
  #  config.extension_white_list = ["jpg", "jpeg", "gif", "png", "bmp", "tiff"]

  # Directory where uploaded photos will be stored. Absolute adress to Rails root
  # config.photo_gallery_dir = "/system/refinery/photo_gallery"

  # After file uploading, there are created 4 versions of this image. If you are not going to recreate this thumbs, delete original uploaded file to save space on disk.
  config.delete_uploaded_file = false

  # Thumbs dimensions in pixels. E.g: [950,950] for width:950, height: 950
  config.album_dimensions = [320, 230] # [140, 105]
  config.preview_dimensions = [230, 230] # [210, 210]
  config.single_dimensions = [500, 345] # [900, 900]

  # config.collections_per_page = 10
  # config.albums_per_page = 10
  # config.photos_per_page = 10
end
  