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
end
