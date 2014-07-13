class Zipcode < ActiveRecord::Base
  has_many :users
  has_and_belongs_to_many :neighborhoods
  has_and_belongs_to_many :cooling_centers

  searchable do
    text :city, :state
  end
end
