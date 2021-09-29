class Addprofiletoslide < ActiveRecord::Migration[6.1]
  def change
    add_reference :slides, :profile, null: true, foreign_key: true
  end
end
