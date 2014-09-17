# require 'csv'

# desc "Import stations from csv file"
# task :import => [:environment] do

#   file = "db/SF_Fire_Police_Stations.csv"

#   CSV.foreach(file, :headers => true) do |row|
#     Resource.create! ({
#       :street_number => row[1],
#       :street_name => row[2],
#       :street_type => row[3],
#       :station_type => row[4],
#       :lat => row[5],
#       :lng => row[6]
#     })
#   end

# end