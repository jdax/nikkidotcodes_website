class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|
      t.string :article_title
      t.string :description
      t.string :publication
      t.string :article_url

      t.timestamps null: false
    end
  end
end
