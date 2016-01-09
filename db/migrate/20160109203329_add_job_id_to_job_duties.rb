class AddJobIdToJobDuties < ActiveRecord::Migration
  def change
    add_column :job_duties, :job_id, :integer
  end
end
