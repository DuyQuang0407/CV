class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :fname
      t.string :lname
      t.date :bod
      t.string :phone
      t.string :email
      t.string :addr

      t.timestamps
    end
  end
end
