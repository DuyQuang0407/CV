class HomeController < ApplicationController
  def index
    
    @socials = Social.all 

    @skills = Skill.all

    @educations = Education.all

    @slides = Slide.all

    @user = {
      fullname: "Cao Duy Quang"
    }
  end
end
