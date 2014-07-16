class ResourcesController < ApplicationController
  def show
    @police = Resource.all
    respond_to do |format|
      format.json { render json: @police }
    end
  end


end