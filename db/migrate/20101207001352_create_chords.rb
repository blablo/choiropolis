class CreateChords < ActiveRecord::Migration
  def self.up
    create_table :chords do |t|
      t.integer :id
      t.integer :song_id
      t.text :lyric

      t.timestamps
    end
  end

  def self.down
    drop_table :chords
  end
end
