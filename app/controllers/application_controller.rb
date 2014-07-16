class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :nert, :cert, :organizations, :birth, :phone, :name, :zip, :address, :cpr, :safe, :first_aid, :dump_truck, :back_hoe, :crane, :fork_lift, :truck, :fuel, :air_compressor, :power_generator, :bus, :saw, :lathe, :plow, :jack_hammer, :emergency_kit, :drill, :hammer, :survival_kit, :shovel, :emergency_contact, :city, :state, :engineer, :contractor, :healthcare, :mechanic, :church, :school, :bomb_shelter, :hurricane_shelter, :oxygen, :wheel_chair, :defibrillation, :other) }
   

  end
end
