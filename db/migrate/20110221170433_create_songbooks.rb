class CreateSongbooks < ActiveRecord::Migration
  def self.up
    create_table :songbooks do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :songbooks
  end
end
