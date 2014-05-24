class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :album_art
      t.string :song_mood
      t.string :listen
      t.date :posted_on

      t.timestamps
    end
  end
end
