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

  desc "adding religious centers stations to buildings"
  task :religious => [:environment] do

    file = "db/sf_religious_centers_address_included.csv"

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

  desc "adding evacuation pickups to buildings"
  task :pickup => [:environment] do

    file = "db/sf_potential_evacuation_pickup_locations.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :b_type => row[0],
        :name => row[1],
        :address => row[2],
        :latitude => row[3],
        :longitude => row[4]
      })
    end

  end
  desc "adding cooling centers to buildings"
  task :cooling => [:environment] do

    file = "db/sf_cooling_centers_for_seniors.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :b_type => row[0],
        :name => row[1],
        :address => row[2],
        :latitude => row[3],
        :longitude => row[4]
      })
    end

  end
  desc "adding sandbag locations to buildings"
  task :sandbag => [:environment] do

    file = "db/sandbag_pickup2.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :name => row[0],
        :city => row[1],
        :address => row[2],
        :b_type => row[3],
        :latitude => row[4],
        :longitude => row[5],
        :phone_number => row[6],
        :notes => row[7]
      })
    end

  end

  desc "adding school locations to buildings"
  task :school => [:environment] do

    file = "db/sf_schools.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :name => row[0],
        :address => row[1],
        :notes => row[2],
        :phone_number => row[3],
        :latitude => row[4],
        :longitude => row[5],
        :city => row[6],
        :b_type => row[7]
      })
    end

  end
  desc "adding child care locations to buildings"
  task :child => [:environment] do

    file = "db/sf_child_care.csv"

    CSV.foreach(file, :headers => true) do |row|
      Building.create! ({
        :notes => row[0],
        :name => row[1],
        :phone_number => row[2],
        :address => row[3],
        :city => row[4],
        :latitude => row[5],
        :longitude => row[6],
        :b_type => row[7]
      })
    end

  end
end