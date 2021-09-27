class Addfiedabout < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles , :about, :text
  end
end
