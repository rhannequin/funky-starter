class ApplicationMailer < ActionMailer::Base
  default from: Setting.first.email
  layout 'mailer'
end
