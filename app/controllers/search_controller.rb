class SearchController < ApplicationController
  def search
    @search = Sunspot.search(Zipcode, CoolingCenters) do
      fulltext params[:search]
    end
    @results = @search.results
    respond_to do |format|
      format.json { render json: @results }
      format.html { render '_results', layout: true }
    end
    p params[:search_text]
    p (params[:query])
    p '^^^^ search text'
    # p @results
    # p fulltext params[:search]
  end
end