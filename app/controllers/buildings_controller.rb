class BuildingsController < ApplicationController
  def index
    @retro = Building.all
    respond_to do |format|
      format.json { render json: @retro }
    end
  end
end