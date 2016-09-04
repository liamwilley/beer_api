class Api::V2::BeersController < ApplicationController

  def index
    @beers = Beer.all
    # render json: @beers
  end

  def destroy

  end
end
