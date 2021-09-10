class HomeController < ApplicationController
  def index
    @socials = [
      { title: 'Twitter', href: "#", icon: 'fab fa-twitter'},
      { title: 'Facebook', href: "#", icon: 'fab fa-facebook'},
      { title: 'Instagram', href: "#", icon: 'fab fa-instagram'},
      { title: 'Github', href: "https://github.com/QuangCD", icon: 'fab fa-github'}
    ]
  end
end
