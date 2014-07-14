class ZipcodesController < ApplicationController

  def search
    @search = Zipcode.search do
      fulltext params[:search]
    end
    @zip = @search.results
    respond_to do |format|
      format.json { render json: @zip }
    end
    p @search
    p @zip
    p 'helllllloooooooooooo'
  end

  def index
    @zipcodes = Zipcode.all
  end
  
end