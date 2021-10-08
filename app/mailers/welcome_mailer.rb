class WelcomeMailer < ApplicationMailer
  def welcome
    @welcome = OpenStruct.new(params[:info])
    mail(to: @welcome.email, subject: @welcome.subject)
  end
end
