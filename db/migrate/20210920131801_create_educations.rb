class CreateEducations < ActiveRecord::Migration[6.1]
  def change
    create_table :educations do |t|
      t.string :name
      t.string :location
      t.integer :start_year, default:0
      t.integer :end_year, default:0
      t.string :description

      t.timestamps
    end
  end
end
