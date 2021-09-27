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
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Profile < ApplicationRecord
  def as_json(options = {})
    super.symbolize_keys.except!(:id, :created_at, :updated_at)
  end
  def fullname
    "#{fname} #{lname}"
  end  
  def age
    Date.today.year - bod.year
  end
end
