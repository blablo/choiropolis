class Song < ActiveRecord::Base


  def clean_lyric
    lines = self.lyric.split(/\n/)
    clean_lyric = ""
    prev_chords = false
    lines.each do |line|
      if line =~ /\b[CDEFGAB]m?7?\b/ and !prev_chords 
        prev_chords = true
      else
        prev_chords = false
        clean_lyric += line
      end
    end
    return clean_lyric
  end

end
