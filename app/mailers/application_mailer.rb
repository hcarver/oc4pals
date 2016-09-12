class ApplicationMailer < ActionMailer::Base
  default from: (ENV['DEFAULT_MAIL_SENDER'] || 'from@example.com')
  layout 'mailer'
end
