# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  about      :text
#  addr       :string
#  bod        :date
#  email      :string
#  fname      :string
#  lname      :string
#  phone      :string
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
