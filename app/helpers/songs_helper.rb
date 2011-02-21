module SongsHelper
  def chordify(lyric)
    lines = lyric.split(/\n/)
    formated_lyric = ""
    prev_chords = false
    lines.each do |line|
      if line =~ /\b[CDEFGAB]m?7?\b/ and !prev_chords 
        prev_chords = true
        formated_lyric += "<span style='color:red'>"+line+"</span>"
      else
        prev_chords = false
        formated_lyric += line
      end
    end
    return raw formated_lyric
  end
end
