class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.integer :id
      t.string :title
      t.string :author
      t.text :lyric
      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
