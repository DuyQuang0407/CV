class Addcolunmnameuser < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles , :username, :string
  end
end
