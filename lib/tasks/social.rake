namespace :social do
  desc "create data social"
  task init: :environment do
    Social.destroy_all
    Social.create([
      { title: 'Twitter', href: "#", icon: 'fab fa-twitter'},
      { title: 'Facebook', href: "#", icon: 'fab fa-facebook'},
      { title: 'Instagram', href: "#", icon: 'fab fa-instagram'},
      { title: 'Github', href: "https://github.com/QuangCD", icon: 'fab fa-github'}
    ])  
  end  
end
