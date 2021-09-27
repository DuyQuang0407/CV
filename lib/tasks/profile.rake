namespace :profile do
  desc "create data user"
  task init: :environment do
    Profile.destroy_all
    Profile.create([
      { fname: 'Cao', 
        lname: "Duy Quang", 
        bod: Date.parse('04/07/2000'),
        phone: '0358013596',
        email: 'duyquang040720@gmail.com',
        addr: 'Tan Phu District, Ho Chi Minh City',
        about: 'Hello! I’m Quang. I am passionate about FullStack Developer. I am a skilled Front-end Developer and Back-end Developer.',
        username: 'QuangCD'
      }
    ])  
  end  
end