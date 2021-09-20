class HomeController < ApplicationController
  def index
    
    @socials = Social.all 

    @user = {
      fullname: "Cao Duy Quang"
    }
  end
end
