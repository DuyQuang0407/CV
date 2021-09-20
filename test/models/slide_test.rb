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
#
require "test_helper"

class SlideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
