class HomeController < ApplicationController
  def index
    # @socials = Social.all 

    # @skills = Skill.all

    # @educations = Education.all

    # @slides = Slide.all

    # @profile = Profile.first
    @profile = Profile.by_username(params[:username]).first
    @socials = @profile.socials 
    @educations = @profile.educations
    @skills = @profile.skills
    @slides = @profile.slides
  end
end
