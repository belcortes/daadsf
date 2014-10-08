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

    @client.search('#disaster', lat:37.782, long: -122.400).take(50).each do |t|
      Tweet.create!({
          :text => t.text,
          :name => t.user.name,
          :location => t.user.location
      })
    end

  end
end