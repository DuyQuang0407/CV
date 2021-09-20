namespace :education do
  desc "create data education"
  task init: :environment do
    Education.destroy_all
    Education.create([
      { name: 'Full Stack Developer', location: "from Green Academy", start_year: 2020, end_year: 2021, 
        description:'Trained in the Ruby programming language based on the rails framework. 
        Exposure to HTML, CSS, Javascript, ... combined with Ruby for web design.'},
      { name: 'Java Developer', location: "from FPT University", start_year: 2018, end_year: 2022, 
        description:'Trained in programming languages ​​such as: C / C ++, Java, Python, C #, .NET, ... 
        Regular practice at school. At the end of each theoretical course there is always a practical course.
        Exposure to IOT technology, learning English, Japanese, ...'},
      { name: 'Science and Mathematics', location: "from Tay Thanh High School", start_year: 2015, end_year: 2018, 
        description:'Studied block A: natural science. Passion and research in math, logic, ...'}
     
    ])  
  end  
end

