class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :skill_bg_color
      t.string :skill_percent

      t.timestamps
    end
  end
end
