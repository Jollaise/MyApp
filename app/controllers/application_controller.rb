class ApplicationController < ActionController::Base
  def resource_name
   :user
 end

 def resource
   @resource ||= User.new
 end

 def devise_mapping
   @devise_mapping ||= Devise.mappings[:user]
 end
 rescue_from CanCan::AccessDenied do |exception|
   redirect_to main_app.root_url, alert: exception.message
 end

end
