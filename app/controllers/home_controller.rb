class HomeController < ApplicationController
  
  def index
    @neighborhoods = Neighborhood.all
    @zipcodes = Zipcode.all
    @users = User.all
    # @users.attributes.each do |attr_name, attr_value|
    #   "#{attr_name} is #{attr_value}" if attr_value == true
    # end
  end

end