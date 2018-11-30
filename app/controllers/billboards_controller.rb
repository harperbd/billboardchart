class BillboardsController < ApplicationController
  def index
    @billboard = Billboard.all
  end

  def show
  end

  def new
  end
end
