class EmailsController < ApplicationController

  def published_images
    @emails = Email.where(published: true)
    respond_to do |format|
      format.html
      format.json { render json: @emails, :methods => [:item_id] }
    end
  end
  
end