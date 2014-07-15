class HomeController < ApplicationController
  
  def index
    @neighborhoods = Neighborhood.all
    @zipcodes = Zipcode.all
  end

end