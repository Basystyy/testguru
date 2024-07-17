class ApplicationMailer < ActionMailer::Base
  default from: %{"TestGuru" <mail@fake.com>}
  layout 'mailer'
end
