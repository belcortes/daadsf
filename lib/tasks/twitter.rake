require 'twitter'

namespace :twitter do
  desc "twitter feed in background"
  task :fetch => :environment do

    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = 'Ki4VH7ullmaMpHYpDM2GhDBLX'
      config.consumer_secret     = 'x1uCE0K0BWBltVZBSA7ZI3Dcys1cUcRvMDCsy52KbINYG4mxNb'
      config.access_token        = '152867998-m6Kyo9xUUTvDpoAL092vhVfVBMM3fMfGz8dUw97k'
      config.access_token_secret = 'LicGYPVWd43oMvAt5CBacrZfYgtgp06Xzq7LUNKq0GJWG'
    end
    # Array tweets = @client.search('#obama').geocode(lat, long, "5mi").fetch
    # tweets.each do |t|
    #   puts t.from_user + " | " + t.text
    # end
    # @client.search("#throwbackthursday", :geocode => "37.754307, -122.437772, 1000mi", :count => 10).each do |t|
    #   # if(t.user.location.present?)
    #     Tweet.create!({
    #         :text => t.text,
    #         :name => t.user.name,
    #         :location => t.user.location
    #     })
      
    # end 
    # Tweet.all.each do |m|
    #   p m.location
    # end

    @client.search('#throwbackthursday').each do |t|
      if(t.user.location == 'California' || t.user.location == 'San Francisco, CA' || t.user.location == 'San Francisco' || t.user.location == 'SF')
        Tweet.create!({
            :text => t.text,
            :name => t.user.name,
            :location => t.user.location
        })
      end
    end 

    # @client.status(520005365208215552).place.bounding_box.coordinates

  end
end