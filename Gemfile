source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.x'

# Database
gem 'pg'

# Webserver
gem 'puma'

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-twitter'

# Templating engine
gem 'haml-rails'

# Soft-delete
gem 'paranoia'

# Authorization
gem 'cancancan'
gem 'rolify'

# Environment configuration
gem 'figaro'

# Assets
## Use SCSS for stylesheets
gem 'sass-rails'
## Bootstrap
gem 'bootstrap-sass'
## Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
## Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'
## See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Ajax
## Use jquery as the JavaScript library
gem 'jquery-rails'
## Turbolinks makes following links in your web application faster
gem 'turbolinks'
## Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
## Use respond_to and respond_with methods
gem 'responders'

# Simple Form
gem 'simple_form'

group :development do
  gem 'capistrano',            require: false # Deployment
  gem 'capistrano-bundler',    require: false # Bundler support for Capistrano
  gem 'capistrano-figaro-yml', require: false # Figaro's config/application.yml support for Capistrano
  gem 'capistrano-rails',      require: false # Rails support for Capistrano
  gem 'capistrano-rvm',        require: false # RVM support for Capistrano
  gem 'capistrano3-puma',      git: 'https://github.com/rhannequin/capistrano-puma.git',
                               branch: 'daemonize-config',
                               require: false # Puma support for Capistrano
  gem 'quiet_assets'                          # Turns off the Rails asset pipeline log
  gem 'rubocop'                               # Ruby style guide
  gem 'spring'                                # Keeps application running in the background
  gem 'web-console'                           # Web Console
end

group :test do
  gem 'capybara'                              # Integration tests
  gem 'database_cleaner'                      # Clean database during tests
  gem 'factory_girl_rails'                    # Factories
  gem 'faker'                                 # Use real values to fake for factories
  gem 'i18n-tasks'                            # Finds and manage missing and unused translations
  gem 'rails-controller-testing'              # Support for assigns and assert_template
  gem 'rspec-rails'                           # RSpec test framework
  gem 'simplecov', require: false             # Test coverage
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
