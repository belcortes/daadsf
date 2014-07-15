class SearchController < ApplicationController
  def search
    @neighborhoods = Neighborhood.all
    @zipcodes = Zipcode.all
    @search = Sunspot.search(Zipcode, CoolingCenters, User) do
      fulltext params[:search]
    end
    @results = @search.results
    respond_to do |format|
      format.json { render json: @results }
      format.html { render '_results', layout: true }
    end
  end
end