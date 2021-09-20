class CreateSlides < ActiveRecord::Migration[6.1]
  def change
    create_table :slides do |t|
      t.string :link_img
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
