class Setdefaultforimage < ActiveRecord::Migration[6.1]
  def change
    change_column_default :slides, :width, from: nil, to:0
    change_column_default :slides, :height, from: nil, to:0
  end
end
