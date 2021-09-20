# == Schema Information
#
# Table name: educations
#
#  id          :integer          not null, primary key
#  description :string
#  end_year    :integer          default(0)
#  location    :string
#  name        :string
#  start_year  :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class EducationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
