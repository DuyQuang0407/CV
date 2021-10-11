require 'ostruct'

class ContactMailer < ApplicationMailer
  def contact
    @contact = OpenStruct.new(params[:info])
    mail(to: @contact.email, subject: @contact.subject)
    params[:job].finished!
  end
end
