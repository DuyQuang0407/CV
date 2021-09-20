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
class Education < ApplicationRecord
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
end
