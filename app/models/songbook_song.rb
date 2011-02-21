class SongbookSong < ActiveRecord::Base
  belongs_to :song
  belongs_to :songbook

  validate :repeated_song

  def repeated_song
    self.errors[:base] << "mal" unless SongbookSong.where(:songbook_id => self.songbook_id, :song_id => self.song_id).empty?
  end
  
end
