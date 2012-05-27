source 'https://rubygems.org'

gem 'rails', '3.2.2'

gem 'jquery-rails'
gem 'devise'
gem 'haml'
gem 'paperclip'
gem 'simple_form'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'shoulda'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'cucumber-rails', :group => [:test], :require => false