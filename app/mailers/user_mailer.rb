class UserMailer < ApplicationMailer
  default from: 'no-reply@mysite.ca'

  def welcome_email(user) 
    # The name for this method MUST be __identical__ to the one that will
    # be used in the 'app/views/user_mailer' folder.


    # we recover the instance USER to then be able to pass it to the view as a USER
    @user = user
    # We define a variable @url that we use in view email
    @url = 'https://mysite.ca/login'
    # This is the call to mail() that allows us to send emails 
    # while defining the subject of the email.
    mail(to: @user.email, subject: 'Welcome to our service!')
  end
end
