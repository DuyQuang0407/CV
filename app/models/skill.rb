# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  bg_color   :string
#  name       :string
#  percent    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Skill < ApplicationRecord
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
end
