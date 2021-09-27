# == Schema Information
#
# Table name: socials
#
#  id         :integer          not null, primary key
#  href       :string
#  icon       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  profile_id :integer
#
# Indexes
#
#  index_socials_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  profile_id  (profile_id => profiles.id)
#
require "test_helper"

class SocialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
