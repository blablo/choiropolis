class SongbookSongsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

  def create
    @songbook_song = SongbookSong.new(params[:songbook_song])
    @songbook_song.save
  end

end
