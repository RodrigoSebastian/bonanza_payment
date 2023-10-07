source "https://rubygems.org"

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.0"
# Use postgresql as the database for Active Record
gem "pg"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use Conekta to create subscriptions and orders
gem 'conekta'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # FFaker for generating fake data
  gem 'ffaker'
  # FactoryBot creates factories for testing
  gem 'factory_bot_rails'
  gem 'factory_bot'

  # Cucumber for BDD testing and DatabaseCleaner for cleaning the database
  gem 'cucumber-rails', require: false
  gem 'database_cleaner' 
  gem 'pry-rails'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

end

