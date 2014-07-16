class CoolingCentersController < ApplicationController
  def show
    @cooling = CoolingCenters.all
    respond_to do |format|
      format.json { render json: @cooling }
    end
  end

  def index
    @search = CoolingCenters.search do
      fulltext params[:search]
    end
    @cooling = @search.results
    respond_to do |format|
      format.json { render json: @cooling }
    end
  end


end