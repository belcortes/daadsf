require 'csv'

desc "Import resources from csv file"
task :import => [:environment] do

  file = "db/sf_hospital_fire_police.csv"

  CSV.foreach(file, :headers => true) do |row|
    p row
    Resource.create! ({
      :name => row[1],
      :address => row[2],
      :phone_number => row[3],
      :website => row[4],
      :resource_type => row[5],
      :facility_type => row[6],
      :services => row[7],
      :lat => row[8],
      :lng => row[9],
      :blank => row[10]
    })
  end

end