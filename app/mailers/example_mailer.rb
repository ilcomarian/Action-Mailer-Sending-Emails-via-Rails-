class ExampleMailer < ActionMailer::Base
    default from: "ilcomarian@gmial.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
  end