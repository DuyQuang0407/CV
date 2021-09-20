namespace :skill do
  desc "create data skill"
  task init: :environment do
    Skill.destroy_all
    Skill.create([
      { skill_name: 'HTML', skill_bg_color: "bg-primary", skill_percent: '80%'},
      { skill_name: 'CSS', skill_bg_color: "bg-primary", skill_percent: '75%'},
      { skill_name: 'JS', skill_bg_color: "bg-primary", skill_percent: '60%'},
      { skill_name: 'JavaSE', skill_bg_color: "bg-primary", skill_percent: '90%'},
      { skill_name: 'ROR', skill_bg_color: "bg-primary", skill_percent: '65%'},
      { skill_name: 'SQL', skill_bg_color: "bg-primary", skill_percent: '75%'}
    ])  
  end  
end