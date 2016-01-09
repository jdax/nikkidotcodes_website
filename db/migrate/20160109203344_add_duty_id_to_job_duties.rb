class AddDutyIdToJobDuties < ActiveRecord::Migration
  def change
    add_column :job_duties, :duty_id, :integer
  end
end
