class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
    respond_to do |format|
      format.html
      format.json { render json: @neighborhoods }
    end
  end
  
end