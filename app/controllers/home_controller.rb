class HomeController < ApplicationController
  def index
    @profile = Profile.by_username(params[:username]).first
    # @socials = @profile.socials 
    # @educations = @profile.educations
    # @skills = @profile.skills
    # @slides = @profile.slides
    respond_to do |format|
      format.html 
      format.pdf do
        html = ApplicationController.renderer.render(partial: 'home/index', locals:{profile: @profile})
        pdf = WickedPdf.new.pdf_from_string(html)
        send_data(pdf, filename: "#{params[:username]}.pdf", disposition: "attachment")
      end
    end
  end
end
