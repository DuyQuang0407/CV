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
class Slide < ApplicationRecord
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
end
