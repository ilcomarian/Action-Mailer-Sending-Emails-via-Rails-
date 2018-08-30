# README
 Now we will build a rails application which will send an email to the user when a new user is created. Let’s create a new rails application.
 
$ rails new new_app_name
$ rails g scaffold user name:string email:string
$ rake db:create
$ rake db:migrate

We now have a basic application, let’s make use of ActionMailer. The mailer generator is similar to any other generator in rails.

$ rails g mailer example_mailer
 in app/mailers/example_mailer.rb

class ExampleMailer < ActionMailer::Base
  default from: "from@example.com"
end

Now let’s write methods and customized email. First you should change the default email address from from@example.com to the email address you want use as the sender’s address.


class ExampleMailer < ActionMailer::Base
  default from: "from@example.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sample Email')
  end
end
