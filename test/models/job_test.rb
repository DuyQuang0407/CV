# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  args       :string
#  job_type   :integer          default(0)
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
