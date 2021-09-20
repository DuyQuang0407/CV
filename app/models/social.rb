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
#
class Social < ApplicationRecord
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
end
