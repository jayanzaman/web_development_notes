class CatfactsMailer < ApplicationMailer
  default from: "catfactsemailsample@gmail.com"

  def catfacts_welcome(email)
    @email = email
    mail(to: @email, subject: "Welcome to Catfacts")
  end
end
