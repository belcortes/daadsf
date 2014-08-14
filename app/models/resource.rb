class Resource < ActiveRecord::Base

  belongs_to :zipcode

  # searchable do
  #   text :zipcode do
  #     :zip_number
  #   end
  # end
    
end
