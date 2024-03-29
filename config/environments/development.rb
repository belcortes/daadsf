CEAD::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Email
  config.action_mailer.delivery_method = :smtp
  # config.action_mailer.perform_deliveries = true
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  # config.action_mailer.default_url_options = { :host => config.app_domain }
  config.action_mailer.smtp_settings = {
                    :address        => "smtp.gmail.com",
                    :port           => 587,
                    :authentication => :plain,
                    :user_name      => "isabel@appallicious.com",
                    :password       => "morfina020589",
                    :openssl_verify_mode  => 'none'
  }
end
  # config.paperclip_defaults = {
  #   :storage => :s3,
  #   :s3_credentials => {
  #     :bucket => ENV['S3_BUCKET_NAME'],
  #     :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
  #     :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  #   }
  # }

  # ActionMailer::Base.smtp_settings = {
  #                   :address        => "smtp.gmail.com",
  #                   :port           => 587,
  #                   :authentication => :plain,
  #                   :user_name      => "<my gmail>@gmail.com",
  #                   :password       => "<my gmail password>",
  #                   :openssl_verify_mode  => 'none'
  # } 
