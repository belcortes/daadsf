class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all
    respond_to do |format|
      format.html
      format.json { render json: @incidents }
    end
  end
  
end