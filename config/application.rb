require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AaditLife
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


	config.api_only = false

    config.log_tags  = [:request_id, lambda { |request| request.headers["uid"] } ]
    
    # Use the responders controller from the responders gem
    config.app_generators.scaffold_controller :responders_controller
    config.generators.jbuilder = false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = false
    config.autoload_paths += %W( #{Rails.root.to_s}/app/services #{Rails.root.to_s}/app/notifiers )

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*',
          :headers => :any,
          :expose  => ['access-token', 'expiry', 'token-type', 'uid', 'client'],
          :methods => [:get, :post, :options, :put, :patch, :delete]
      end
    end


    config.middleware.use ExceptionNotification::Rack,
    :email => {
      :email_prefix => "[Error] ",
      :sender_address => %{"Admin" <admin@aaditlife.com>},
      :exception_recipients => %w{thimmaiah@gmail.com admin@aaditlife.com}
    }

    config.active_job.queue_adapter = :delayed_job
    config.to_prepare do
      Devise::Mailer.layout "mailer"
    end



  end
end
