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

    @client.search('#codetoprepare OR #disaster OR #lomaprieta OR #earthquake', :result_type => 'recent', :geocode => '37.781157,-122.398720,8mi').take(150).each do |t|
      Tweet.find_or_create_by_text_and_handle(text: t.text, handle: t.user.screen_name) do |c|
        c.name = t.user.name
        c.location = t.user.location
        c.photo = t.user.profile_image_url.to_s
        c.lat = t.geo.coordinates.first
        c.long = t.geo.coordinates.last
      end
    end

  end
end