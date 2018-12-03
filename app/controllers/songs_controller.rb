class SongsController < ApplicationController
  before_action :artist_or_billboard
  before_action :set_song, only: [:show, :update]
  def index
    @songs = @art_or_bill.songs
  end

  def show
  end

  def new
    # @song = @billboard.songs.new
    @song = @art_or_bill.songs.new
    render partial: "form"
  end

  def create
    @song = @art_or_bill.songs.create(song_params)
    if @song.save
      if @song.billboard_id == nil
        @song.update(billboard_id: 1)
      end
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    render partial: "form"
  end

  def update
    if @song.update(song_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  # def rank
  #   @curr_rank = @billboard.songs.rank
  # end

  private
    def song_params
      params.require(:song).permit(:title, :artist_id, :billboard_id, :rank)
    end

    # def set_billboard
    #   @billboard = Billboard.find(params[:billboard_id])
    # end

    # def set_artist
    #   @artist = Artist.find(params[:artist_id])
    # end

    # def set_song
    #   @song = Song.find(params[:id])
    # end

    def artist_or_billboard
      @art_or_bill ||=
        if params[:artist_id]
          Artist.find(params[:artist_id])
        elsif params[:billboard_id]
          Billboard.find(params[:billboard_id])
        end
    end
end
