# require 'twitter'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # before_filter :load_tweets

  # def load_tweets
  # #   # @tweets = Twitter.user_timeline[0..4] # For this demonstration lets keep the tweets limited to the first 5 available.
  #   @client = Twitter::REST::Client.new do |config|
  #     config.consumer_key        = 'Ki4VH7ullmaMpHYpDM2GhDBLX'
  #     config.consumer_secret     = 'x1uCE0K0BWBltVZBSA7ZI3Dcys1cUcRvMDCsy52KbINYG4mxNb'
  #     config.access_token        = '152867998-m6Kyo9xUUTvDpoAL092vhVfVBMM3fMfGz8dUw97k'
  #     config.access_token_secret = 'LicGYPVWd43oMvAt5CBacrZfYgtgp06Xzq7LUNKq0GJWG'
  #   end
  # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :nert, :cert, :birth, :phone, :name, :zip, :address, :cpr, :safe, :firstresponder, :firstaid, :dumptruck, :backhoe, :crane, :forklift, :truck, :fuel, :generator, :jackhammer, :emergency, :drill, :hammer, :shovel, :city, :state, :engineer, :contractor, :church, :school, :underground, :overnight, :oxygen, :wheelchair, :defibrillation, :other, :firstreponder, :inspector, :commercial, :electrician, :carpenter, :operator, :plumber, :kitchen, :bulldozer, :excavator, :frontloader, :reclaimer, :trencher, :tractor, :goggles, :axe, :address2, :backhoe_q, :bulldozer_q, :dumptruck_q, :excavator_q, :forklift_q, :frontloader_q, :jackhammer_q, :reclaimer_q, :tractor_q, :trencher_q, :axe_q, :drill_q, :fuel_q, :goggles_q, :hammer_q, :shovel_q, :defibrillation_q, :emergency_q, :oxygen_q, :wheelchair_q, :generator_q, :kitchen_q, :overnight_q, :underground_q, :business, :ngo, :gov, :faith, :closed, :open, :rescue, :flashlight, :flashlight_q, :individual) }
  end
end
