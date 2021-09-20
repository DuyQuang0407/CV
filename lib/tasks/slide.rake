namespace :slide do
  desc "create data slide"
  task init: :environment do
    Slide.destroy_all
    Slide.create([
      { link_img: 'https://top10tphcm.com/wp-content/uploads/2018/12/trung-tam-dao-tao-do-hoa-green-academy.jpg', width: "650", height: '367'},
      { link_img: 'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg', width: "650", height: '367'},
      { link_img: 'https://review.edu.vn/wp-content/uploads/2021/03/dai-hoc-fpt-1.jpg', width: "650", height: '367'}
    ])  
  end  
end
