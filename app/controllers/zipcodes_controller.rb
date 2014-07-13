class ZipcodesController < ApplicationController

  def index
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
  
end