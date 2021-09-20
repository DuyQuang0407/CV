# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  skill_bg_color :string
#  skill_name     :string
#  skill_percent  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Skill < ApplicationRecord
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
end
