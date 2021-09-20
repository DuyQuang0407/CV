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
require "test_helper"

class SkillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
