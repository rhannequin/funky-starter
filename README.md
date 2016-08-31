# Funky Starter Plus Plus

Funky Starter Plus Plus is an empty project with basic configuration. It has been developed to create quickly new Rails applications on top of it.

## What's in it?

This is a sample Rails application. Here's what is installed:

* [Devise](https://github.com/plataformatec/devise) for authentication
* [RSpec](https://github.com/rspec/rspec-rails) for TDD
* [simplecov](https://github.com/colszowka/simplecov) for test coverage
* [Capybara](https://github.com/jnicklas/capybara) for BDD
* [factory_girl](https://github.com/thoughtbot/factory_girl) for factories
* [Figaro](https://github.com/laserlemon/figaro) for git-ignored configuration file
* [Sass](http://sass-lang.com/guide) for CSS
* [CoffeeScript](http://coffeescript.org/) for JavaScript
* [Turbolinks](https://github.com/rails/turbolinks) for faster frontend
* [Bootstrap](https://github.com/twbs/bootstrap-sass) integration
* [Simple Form](https://github.com/plataformatec/simple_form)
* Devise custom view with Simple Form and Bootstrap
* [i18n-tasks](https://github.com/glebm/i18n-tasks) and improvements in translations
* [Rubocop](https://github.com/bbatsov/rubocop)

## Requirements

* Git
* Ruby 2
* Bundler

## Usage

```sh
$ git clone https://github.com/rhannequin/funky-starter-plus-plus
$ cd funky-starter-plus-plus
$ bundle install
$ bundle exec rake fork[/home/xxx/my-new-project]
```

Where `/home/xxx/my-new-project` is where you want to create your project.

Names like `my-new-project` will create a module like `MyNewProject`.

**Warning:** if you are using [ZSH](https://github.com/robbyrussell/oh-my-zsh), you have to use another syntax:

`$ bundle exec rake fork\[/home/xxx/my-new-project\]` or

`$ noglob bundle exec rake fork[/home/xxx/my-new-project]`.

## Current issues

This project is *under development* and **really** not ready yet. Here are some issues I am currently working on to:

* [Empty environment variables after deployment](https://github.com/laserlemon/figaro/issues/210)
