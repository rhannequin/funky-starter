class ApplicationMailer < ActionMailer::Base
  default from: Setting.exists? ? Setting.first.email : 'test@example.com'
  layout 'mailer'
end
