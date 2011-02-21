class SongbooksController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @songbooks = Songbook.all
  end
  
  def new
    @songbook = Songbook.new
  end

  def create
    @songbook = Songbook.new(params[:songbook])
    if @songbook.save
      redirect_to songbooks_url
    else
      render :new
    end
  end

end
