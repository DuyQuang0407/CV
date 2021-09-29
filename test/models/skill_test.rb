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
#  profile_id :integer
#
# Indexes
#
#  index_skills_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  profile_id  (profile_id => profiles.id)
#
require "test_helper"

class SkillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
