# require 'csv'

# namespace :tasks do
#   desc "non retro fitted buildings"
#   task :import => [:environment] do

#     file = "db/non_retro_fitted_buildings_final.csv"

#     CSV.foreach(file, :headers => true) do |row|
#       Building.create! ({
#         :address => row[0],
#         :latitude => row[1],
#         :longitude => row[2]
#       })
#     end

#   end
# end