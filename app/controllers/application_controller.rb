class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # render :print => false

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :nert, :cert, :birth, :phone, :name, :zip, :address, :cpr, :safe, :firstresponder, :firstaid, :dumptruck, :backhoe, :crane, :forklift, :truck, :fuel, :generator, :jackhammer, :emergency, :drill, :hammer, :shovel, :city, :state, :engineer, :contractor, :church, :school, :underground, :overnight, :oxygen, :wheelchair, :defibrillation, :other, :firstreponder, :inspector, :commercial, :electrician, :carpenter, :operator, :plumber, :kitchen, :bulldozer, :excavator, :frontloader, :reclaimer, :trencher, :tractor, :goggles, :axe, :address2, :backhoe_q, :bulldozer_q, :dumptruck_q, :excavator_q, :forklift_q, :frontloader_q, :jackhammer_q, :reclaimer_q, :tractor_q, :trencher_q, :axe_q, :drill_q, :fuel_q, :goggles_q, :hammer_q, :shovel_q, :defibrillation_q, :emergency_q, :oxygen_q, :wheelchair_q, :generator_q, :kitchen_q, :overnight_q, :underground_q) }
  end
end
