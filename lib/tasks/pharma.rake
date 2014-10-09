require 'csv'

namespace :import do
  desc "adding pharmacies to buildings"
  task :pharma => [:environment] do

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

  desc "adding supermarkets to buildings"
  task :super => [:environment] do

    file = "db/sf_supermarkets.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :name => row[0],
        :address => row[1],
        :b_type => row[2],
        :latitude => row[3],
        :longitude => row[4]
      })
    end

  end

  desc "adding gas stations to buildings"
  task :gas => [:environment] do

    file = "db/sf_gas_station_final.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :name => row[0],
        :address => row[1],
        :latitude => row[2],
        :longitude => row[3],
        :b_type => row[4]
      })
    end

  end
end