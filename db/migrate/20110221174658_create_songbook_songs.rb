class CreateSongbookSongs < ActiveRecord::Migration
  def self.up
    create_table :songbook_songs do |t|
      t.integer :id
      t.integer :song_id
      t.integer :songbook_id

      t.timestamps
    end
  end

  def self.down
    drop_table :songbook_songs
  end
end
