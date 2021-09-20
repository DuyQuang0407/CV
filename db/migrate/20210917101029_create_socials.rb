class CreateSocials < ActiveRecord::Migration[6.1]
  def change
    create_table :socials do |t|
      t.string :title
      t.string :href
      t.string :icon

      t.timestamps
    end
  end
end
