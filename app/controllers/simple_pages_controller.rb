class SimplePagesController < ApplicationController
  def index
  end
  def landing_page
    @products = Product.limit(3)
  end
  def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  @subject = params[:subject]
  UserMailer.contact_form(@email, @name, @message).deliver_now
  end
  def resource_name
   :user
 end

 def resource
   @resource ||= User.new
 end

 def devise_mapping
   @devise_mapping ||= Devise.mappings[:user]
 end
end
