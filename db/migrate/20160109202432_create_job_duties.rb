class CreateJobDuties < ActiveRecord::Migration
  def change
    create_table :job_duties do |t|

      t.timestamps null: false
    end
  end
end
