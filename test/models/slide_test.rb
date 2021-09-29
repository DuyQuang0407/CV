# == Schema Information
#
# Table name: slides
#
#  id         :integer          not null, primary key
#  height     :integer          default(0)
#  link_img   :string
#  width      :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  profile_id :integer
#
# Indexes
#
#  index_slides_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  profile_id  (profile_id => profiles.id)
#
require "test_helper"

class SlideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
