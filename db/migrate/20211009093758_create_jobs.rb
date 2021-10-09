class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.integer :status, default: 0
      t.string :args
      t.integer :job_type, default: 0

      t.timestamps
    end
  end
end
