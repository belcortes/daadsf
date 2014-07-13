class CoolingCenters < ActiveRecord::Base
  has_and_belongs_to_many :zipcodes

  searchable do
    text :name, :city, :state, :phone, :center_type, :accessibility, :zip
  end

end
