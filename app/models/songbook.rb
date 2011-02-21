class Songbook < ActiveRecord::Base
  has_many :songbook_songs
  has_many :songs, :through => :songbook_songs
  
  validates :name, :presence => true
  
end
