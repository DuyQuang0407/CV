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
#  profile_id  :integer
#
# Indexes
#
#  index_educations_on_profile_id  (profile_id)
#
# Foreign Keys
#
#  profile_id  (profile_id => profiles.id)
#
class Education < ApplicationRecord
  belongs_to :profile
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
end
