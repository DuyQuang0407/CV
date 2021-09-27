class Addprofiletosocial < ActiveRecord::Migration[6.1]
  def change
    add_reference :socials, :profile, null: true, foreign_key: true
  end
end
