class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :project_name
      t.string :girhub_url
      t.text :description
      t.string :cool_point1
      t.string :cool_point2

      t.timestamps null: false
    end
  end
end
