class BillboardSongRankingsController < ApplicationController

  before_action :set_billboard_song_ranking, only: [:destroy]

  def index
  #   todo: will this be used?
  end

  def show
  #   todo: use this one as there should always be a billboard.id or song.id
    BillboardSongRanking.find_by_billboard_id(1)
  end

  def new
  #   todo: should have a billboard.id and song.id? in request???
    @billboard_song_ranking = BillboardSongRanking.new(billboard_id: params[:billboard_id])
    # todo: exclude songs already in billboard
    @songs = Song.all
    render partial: "form"
  end

  def create
    @billboard_song_ranking = BillboardSongRanking.create(billboard_song_ranking_params)
    if (@billboard_song_ranking.save())
      redirect_to billboard_path(@billboard_song_ranking.billboard_id)
    else
      render :new
    end
  end

  def destroy
    billboard_id = @billboard_song_ranking.billboard_id
    @billboard_song_ranking.destroy
    redirect_to billboard_path(billboard_id)
  end

  private
    def billboard_song_ranking_params
      params.require(:billboard_song_ranking).permit(:billboard_id, :song_id, :ranking)
    end

    def set_billboard_song_ranking
      @billboard_song_ranking = BillboardSongRanking.find(params[:id])
    end
end