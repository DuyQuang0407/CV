namespace :administrator do
  desc "create data author for admin"
  task init: :environment do
    Administrator.create(
      email: 'duyquang040720@gmail.com',
      password: '123456',
      first_name: 'Quang',
      last_name: 'Cao'
    )
  end  
end
