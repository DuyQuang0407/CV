class HomeController < ApplicationController
  def index
    
    @socials = Social.all 

    @skills = Skill.all
    @user = {
      fullname: "Cao Duy Quang"
    }
  end
end
