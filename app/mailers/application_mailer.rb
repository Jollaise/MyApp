class ApplicationMailer < ActionMailer::Base
  add_template_helper(EmailHelper)
  default from: 'julia.reger@me.com'
  layout 'mailer'
end
