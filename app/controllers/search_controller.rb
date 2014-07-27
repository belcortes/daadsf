class SearchController < ApplicationController
  def search
    @neighborhoods = Neighborhood.all
    @zipcodes = Zipcode.all
    @users = User.all
    @search = Sunspot.search(User, CoolingCenters, Resource) do
      fulltext params[:search]
      # keywords 'cert'
      # with(:cert, true)
      # with(:nert, true)
      # with(:cpr, true)
      # with(:safe, true)
      # with(:first_aid, true)
      # with(:dump_truck, true)
      # with(:back_hoe, true)
      # with(:crane, true)
      # with(:fork_lift, true)
    end
    @results = @search.results
    # p @results
    # p '-----------------------------------'
    respond_to do |format|
      format.json { render json: @results }
      format.html { render '_results', layout: true }
    end
  end
end