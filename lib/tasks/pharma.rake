require 'csv'

namespace :tasks do
  desc "adding pharmacies to buildings"
  task :import => [:environment] do

    file = "db/sf_pharmacies.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :address => row[0],
        :latitude => row[1],
        :longitude => row[2],
        :name => row[3],
        :b_type => row[4]
      })
    end

  end
end