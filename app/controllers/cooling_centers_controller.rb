class CoolingCentersController < ApplicationController
  def show
    @cooling = CoolingCenters.all
    respond_to do |format|
      format.json { render json: @cooling }
    end
  end


end