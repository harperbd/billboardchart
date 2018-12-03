class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show]
  def index
    @artists = Artist.all 
  end

  def show
  end

  def new
    @artist = Artist.new
    render partial: "form"
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.save
      redirect_to new_artist_song_path(@artist)
    else
      render :new
    end
  end

  private 
  def artist_params
    params.require(:artist).permit(:name, :genre)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

  # def get_billboard_id
  #   @billboard
  # end
end
