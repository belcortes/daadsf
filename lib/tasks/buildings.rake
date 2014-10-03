require 'csv'

desc "non retro fitted buildings 2"
task :import => [:environment] do

  file = "db/non_retro_fitted_buildings_final.csv"

  CSV.foreach(file, :headers => true) do |row|
    Building.create! ({
      :address => row[1],
      :latitude => row[2],
      :longitude => row[3]
    })
  end

end