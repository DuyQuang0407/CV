class Renameskill < ActiveRecord::Migration[6.1]
  def change
    rename_column :skills, :skill_name, :name
    rename_column :skills, :skill_percent, :percent
    rename_column :skills, :skill_bg_color, :bg_color
  end
end
