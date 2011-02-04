class Song < ActiveRecord::Base
  has_one :chord
  
  accepts_nested_attributes_for :chord

end
