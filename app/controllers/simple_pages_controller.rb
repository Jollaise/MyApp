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
  ActionMailer::Base.mail(from: @email,
      to: 'julia.reger@me.com',
      subject: @subject,
      body: @message).deliver_now
  end
end
