class HomeController < ApplicationController
  def index
    
    @socials = Social.all 

    @skills = Skill.all

    @educations = Education.all

    @slides = Slide.all

    @profile = Profile.first
  end
end
