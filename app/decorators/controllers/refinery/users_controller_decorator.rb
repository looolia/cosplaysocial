Refinery::UsersController.class_eval do

  # Protect these actions behind an admin login
  before_filter :redirect?, :only => []

end