# Funky Starter

[![Travis Build Status](https://api.travis-ci.org/rhannequin/funky-starter.png)](https://travis-ci.org/rhannequin/funky-starter)

Funky Starter is an empty project with basic configuration. It has been developed to create quickly new Rails applications on top of it.


## What's in it?

This is a sample Rails application. Here's what is installed:

* [Devise](https://github.com/plataformatec/devise) for authentication
* [Omniauth](https://github.com/omniauth/omniauth) for Twitter and Facebook authentication
* [Puma](https://github.com/puma/puma) web server
* [nginx](http://nginx.org) application server configuration ready
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
* Ruby 2
* Bundler


## Usage

```sh
$ git clone https://github.com/rhannequin/funky-starter
$ cd funky-starter
$ bundle install
$ bundle exec rake fork[/home/xxx/my-new-project]
```

Where `/home/xxx/my-new-project` is where you want to create your project.

Names like `my-new-project` will create a module like `MyNewProject`.

**Warning:** if you are using [ZSH](https://github.com/robbyrussell/oh-my-zsh), you have to use another syntax:

`$ bundle exec rake fork\[/home/xxx/my-new-project\]` or

`$ noglob bundle exec rake fork[/home/xxx/my-new-project]`.


## Testing

```
$ RACK_ENV=test bundle exec rake db:migrate
$ bundle exec rspec
```


## Current issues

This project is *under development* and **really** not ready yet. Here are some issues I am currently working on to:

* none (for the moment)
