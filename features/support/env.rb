# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a
# newer version of cucumber-rails. Consider adding your own code to a new file
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.

require 'cucumber/rails'

# Capybara defaults to CSS3 selectors rather than XPath.
# If you'd prefer to use XPath, just uncomment this line and adjust any
# selectors in your step definitions to use the XPath syntax.
# Capybara.default_selector = :xpath

# By default, any exception happening in your Rails application will bubble up
# to Cucumber so that your scenario will fail. This is a different from how
# your application behaves in the production environment, where an error page will
# be rendered instead.
#
# Sometimes we want to override this default behaviour and allow Rails to rescue
# exceptions and display an error page (just like when the app is running in production).
# Typical scenarios where you want to do this is when you test your error pages.
# There are two ways to allow Rails to rescue exceptions:
#
# 1) Tag your scenario (or feature) with @allow-rescue
#
# 2) Set the value below to true. Beware that doing this globally is not
# recommended as it will mask a lot of errors for you!
#
ActionController::Base.allow_rescue = false

# Remove/comment out the lines below if your app doesn't have a database.
# For some databases (like MongoDB and CouchDB) you may need to use :truncation instead.
begin
  DatabaseCleaner.strategy = :truncation, {:except => %w[postcodelatlng rates cqc_records holidays]}
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

# You may also want to configure DatabaseCleaner to use different strategies for certain features and scenarios.
# See the DatabaseCleaner documentation for details. Example:
#
#   Before('@no-txn,@selenium,@culerity,@celerity,@javascript') do
#     # { :except => [:widgets] } may not do what you expect here
#     # as Cucumber::Rails::Database.javascript_strategy overrides
#     # this setting.
#     DatabaseCleaner.strategy = :truncation
#   end
#
#   Before('~@no-txn', '~@selenium', '~@culerity', '~@celerity', '~@javascript') do
#     DatabaseCleaner.strategy = :transaction
#   end
#

Capybara.run_server = true
Capybara.server_port = 3000
Capybara.default_wait_time = 5

Capybara.register_server :puma do |app, port, host|
  require 'puma'
  Puma::Server.new(app).tap do |s|
    s.add_tcp_listener host, port
  end.run.join
end


Capybara.server_host = "localhost"
Capybara.app_host = 'http://localhost:8100'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: {
                                   "chromeOptions" => {
                                     "args" => %w{ window-size=400,650 }
                                   }
  })
end

Capybara.javascript_driver = :chrome

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver        = :selenium
end



module ALUtils
  def ionic_select(value, select, first_select_on_page = true)
    within("form  ##{select}") do
      find(".item-inner").click
      begin
        if(first_select_on_page)
          find(".input-wrapper").click
          find(".item-cover").click
        end
      rescue
      end
    end

    find(".alert-radio-button", :text => "#{value}").click
    find(".button-inner", :text => "#{value}").click
    click_on("OK")
  end


  def key_values(entity, args)
    key_val = Hash[args.split(";").map{|kv| kv.split("=")}]
    key_val.each do |k, v|
      entity[k] = v
    end
  end
end


World(ALUtils)
