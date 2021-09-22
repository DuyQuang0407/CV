namespace :social do
  desc "create data social"
  task init: :environment do
    Social.destroy_all
    Social.create([
      { title: 'Twitter', href: "javascript:void(0)", icon: 'fab fa-twitter'},
      { title: 'Facebook', href: "javascript:void(0)", icon: 'fab fa-facebook'},
      { title: 'Instagram', href: "javascript:void(0)", icon: 'fab fa-instagram'},
      { title: 'Github', href: "javascript:void(0)", icon: 'fab fa-github'}
    ])  
  end  
end
