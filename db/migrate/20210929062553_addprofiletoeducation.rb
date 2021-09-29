class Addprofiletoeducation < ActiveRecord::Migration[6.1]
  def change
    add_reference :educations, :profile, null: true, foreign_key: true
  end
end
