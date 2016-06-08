source 'https://rubygems.org'


gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'pg'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7'
gem 'responders'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
gem 'unicorn'
gem 'faraday'
gem 'figaro'
gem "omniauth-twitter"

group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'capybara'
  gem 'vcr'
  gem 'webmock'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', require: false
  gem 'rack_session_access'
end

group :test do
  gem 'mocha'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :production do
  gem 'rails_12factor' #will give you better erros but must be wrapped in production
end
