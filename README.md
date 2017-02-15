# Funky Starter

[![Travis Build Status](https://api.travis-ci.org/rhannequin/funky-starter.png)](https://travis-ci.org/rhannequin/funky-starter)

Funky Starter is an empty project with basic configuration. It has been developed to create quickly new Rails applications on top of it.


## What's in it?

This is a sample Rails application. Here's what is installed:

* [Devise](https://github.com/plataformatec/devise) for authentication
* [Omniauth](https://github.com/omniauth/omniauth) for Twitter and Facebook authentication
* [friendly_id](https://github.com/norman/friendly_id) slugging and permalink plugins
* [Puma](https://github.com/puma/puma) web server
* [nginx](http://nginx.org) application server configuration ready
* [Rack::Attack](https://github.com/kickstarter/rack-attack) middleware for blocking & throttling abusive requests
* [Simple Form](https://github.com/plataformatec/simple_form)
* [Sass](http://sass-lang.com/guide) for CSS
* [CoffeeScript](http://coffeescript.org/) for JavaScript
* [Turbolinks](https://github.com/rails/turbolinks) for faster frontend
* [Bootstrap](https://github.com/twbs/bootstrap-sass) integration
* Devise custom view with Simple Form and Bootstrap
* [RSpec](https://github.com/rspec/rspec-rails) for TDD
* [Capybara](https://github.com/jnicklas/capybara) for BDD
* [factory_girl](https://github.com/thoughtbot/factory_girl) for factories
* [i18n-tasks](https://github.com/glebm/i18n-tasks) and improvements in translations
* [simplecov](https://github.com/colszowka/simplecov) for test coverage
* [Rubocop](https://github.com/bbatsov/rubocop) for code review
* [Figaro](https://github.com/laserlemon/figaro) for git-ignored configuration file
* [Capistrano](http://capistranorb.com) for automatic deployment


## Requirements

* Git
* Ruby 2.3.x
* Bundler 1.13.x


## Usage

```sh
$ git clone https://github.com/rhannequin/funky-starter
$ cd funky-starter
$ bundle install
$ bundle exec rails fork[/home/xxx/my-new-project]
```

Where `/home/xxx/my-new-project` is where you want to create your project.

Names like `my-new-project` will create a module like `MyNewProject`.

**Warning:** if you are using [ZSH](https://github.com/robbyrussell/oh-my-zsh), you have to use another syntax:

`$ bundle exec rails fork\[/home/xxx/my-new-project\]` or

`$ noglob bundle exec rails fork[/home/xxx/my-new-project]`.


## Testing

```
$ RACK_ENV=test bundle exec rails db:create db:migrate
$ bundle exec rspec
```

## Features

### Environment variables

All environment variables are defined in [application.yml](https://github.com/rhannequin/funky-starter/blob/master/config/application.yml) and used by the [Figaro](https://github.com/laserlemon/figaro) gem. Some of them are required by the application to be started and are defined in [figaro.rb](https://github.com/rhannequin/funky-starter/blob/master/config/initializers/figaro.rb)

### User model

#### UUID

Users are not using regular integer ids, but UUID generated by PostgreSQL's uuid_generate_v4(). This is why PG is required on this project.

#### `#name`

Each user has a required `#name` attribute which is unique and leads to create a [friendly_id](https://github.com/norman/friendly_id) slug.

### Devise

#### Password pepper

Devise is [configured](https://github.com/rhannequin/funky-starter/blob/master/config/initializers/devise.rb) to use a pepper hash to generate hashed passwords.

#### Password change

Devise will send an email to user when they change their password.

#### Lockable module

Devise's [Lockable](http://www.rubydoc.info/github/plataformatec/devise/master/Devise/Models/Lockable) module is enabled. It is [configured](https://github.com/rhannequin/funky-starter/blob/master/config/initializers/devise.rb) lock user's account and send unlock instructions by email after 10 failed sign in.

### Views

Views are generated from Haml files and not ERB.

### I18n

Everything (almost) is supported in English and French.

### Rack::Attack

Rack middleware for blocking & throttling abusive requests. Use the default [configuration](https://github.com/rhannequin/funky-starter/blob/master/config/initializers/rack-attack.rb).
