class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :form

  # def create
  #  @user = User.last
  #  case step
  #  when :carrier_profile
  #    @profile = CarrierProfile.create!(:dot => params[:dot])
  #    if @profile.save
  #       render_wizard @user
  #    else
  #       flash[:alert] = "Record not saved"
  #    end
  #  when :shipper_profile
  #    @profile = ShipperProfile.create!(params[:shipper_profile)
  #    if @profile.save
  #       render_wizard @user
  #    else
  #       flash[:alert] = "Record not saved"
  #    end
  #  end
  # end
  def show
    render_wizard
  end
  def update
    render_wizard
  end
end
