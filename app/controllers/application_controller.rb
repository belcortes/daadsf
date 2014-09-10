class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :nert, :cert, :birth, :phone, :name, :zip, :address, :cpr, :safe, :firstresponder, :firstaid, :dumptruck, :backhoe, :crane, :forklift, :truck, :fuel, :generator, :jackhammer, :emergency, :drill, :hammer, :shovel, :city, :state, :engineer, :contractor, :church, :school, :underground, :overnight, :oxygen, :wheelchair, :defibrillation, :other, :firstreponder, :inspector, :commercial, :electrician, :carpenter, :operator, :plumber, :kitchen, :bulldozer, :excavator, :frontloader, :reclaimer, :trencher, :tractor, :goggles, :axe, :address2) }
  end
end
