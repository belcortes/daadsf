class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate



  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      md5_of_password = Digest::MD5.hexdigest(password)
      username == 'admin' && md5_of_password == '743051cb01e060fa0fd5ddeaa654fd4a'
    end
  end

  def login_onload

  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :nert, :cert, :birth, :phone, :name, :zip, :address, :cpr, :safe, :firstresponder, :firstaid, :dumptruck, :backhoe, :crane, :forklift, :truck, :fuel, :generator, :jackhammer, :emergency, :drill, :hammer, :shovel, :city, :state, :engineer, :contractor, :church, :school, :underground, :overnight, :oxygen, :wheelchair, :defibrillation, :other, :firstreponder, :inspector, :commercial, :electrician, :carpenter, :operator, :plumber, :kitchen, :bulldozer, :excavator, :frontloader, :reclaimer, :trencher, :tractor, :goggles, :axe, :address2, :backhoe_q, :bulldozer_q, :dumptruck_q, :excavator_q, :forklift_q, :frontloader_q, :jackhammer_q, :reclaimer_q, :tractor_q, :trencher_q, :axe_q, :drill_q, :fuel_q, :goggles_q, :hammer_q, :shovel_q, :defibrillation_q, :emergency_q, :oxygen_q, :wheelchair_q, :generator_q, :kitchen_q, :overnight_q, :underground_q, :business, :ngo, :gov, :faith, :closed, :open, :rescue, :flashlight, :flashlight_q, :individual, :license_number, :certification_number, :license2_number, :certification2_number, :duns_number, :volunteer, :sandbag, :sandbag_q, :meals, :gather, :clothing, :spiritual, :meal_q, :clothing_q) }
  end
end
