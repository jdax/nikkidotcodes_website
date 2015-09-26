class CreateSpeakings < ActiveRecord::Migration
  def change
    create_table :speakings do |t|
      t.string :talk_name
      t.string :conference
      t.string :conference_url
      t.string :slides_url
      t.string :video_url

      t.timestamps null: false
    end
  end
end
