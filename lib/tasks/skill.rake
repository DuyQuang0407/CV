namespace :skill do
  desc "create data skill"
  task init: :environment do
    Skill.destroy_all
    Skill.create([
      { name: 'HTML', bg_color: "bg-primary", percent: '80%'},
      { name: 'CSS', bg_color: "bg-primary", percent: '75%'},
      { name: 'JS', bg_color: "bg-primary", percent: '60%'},
      { name: 'JavaSE', bg_color: "bg-primary", percent: '90%'},
      { name: 'ROR', bg_color: "bg-primary", percent: '65%'},
      { name: 'SQL', bg_color: "bg-primary", percent: '75%'}
    ])  
  end  
end