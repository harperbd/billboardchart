class SongsController < ApplicationController
  def index
    @songs = @billboard.songs
  end

  def show
  end

  def new
  end
end
