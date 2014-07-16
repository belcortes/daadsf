class Zipcode < ActiveRecord::Base
  has_many :users
  has_many :resources
  has_and_belongs_to_many :neighborhoods
  has_and_belongs_to_many :cooling_centers

  # searchable do
  #   text :city, :state, :zip_number
  #   text :user_ids do
  #     users.map(&:id)
  #   end
  # end
end
