# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rails'
require 'database_cleaner'
require 'webmock'
require 'vcr'
require "rack_session_access/capybara"

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

config.before(:suite) do
  config.use_transactional_fixtures = false
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean_with(:truncation)
end

config.around(:each) do |example|
  DatabaseCleaner.cleaning do
    example.run
  end
end

VCR.configure do |c|
   c.cassette_library_dir = 'spec/cassettes'
   c.hook_into :webmock
   c.configure_rspec_metadata!
   c.allow_http_connections_when_no_cassette = true
 end

  config.fixture_path = "#{::Rails.root}/spec/fixtures"


  config.use_transactional_fixtures = true


  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

end
