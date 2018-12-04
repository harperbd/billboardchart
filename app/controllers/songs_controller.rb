class SongsController < ApplicationController
  # before_action :set_artist
  before_action :set_song, only: [:show, :update]
  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
    render partial: "form"
  end

  def create
    @song = Song.create(song_params)
    if @song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to songs_path
    else
      render :edit
    end
  end

  private
    def song_params
      params.require(:song).permit(:title, :artist_id)
    end

    def set_song
      @song = Song.find(params[:id])
    end

    def set_artist 
      @artist = Artist.find(params[:sub_id])
    end
end
