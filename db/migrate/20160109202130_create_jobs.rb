class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps null: false
    end
  end
end
