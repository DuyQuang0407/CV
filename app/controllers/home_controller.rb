class HomeController < ApplicationController
  def index
    @profile = Profile.by_username(params[:username]).first

    respond_to do |format|
      format.html 
      format.pdf do
        html = ApplicationController.renderer.render(partial: 'home/index', locals:{profile: @profile})
        pdf = WickedPdf.new.pdf_from_string(html)
        send_data(pdf, filename: "#{params[:username]}.pdf", disposition: "attachment")
      end
    end
  end

  def contact
    # ContactMailer.with(info: contact_params).contact.deliver_later
    MailerJob.perform_later(contact_params)
    redirect_to root_path
  end

  private
  def contact_params
    params.require(:contact).permit(:subject, :name, :email, :phone, :message)
  end

  def welcome
    WelcomeMailer.with(info: welcome_params).welcome.deliver_later
    redirect_to root_path
  end

  private
  def welcome_params
    params.require(:welcome).permit(:subject, :name, :email, :phone, :message)
  end
end
