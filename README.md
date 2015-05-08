# CurrentDomain

[![Build Status](https://travis-ci.org/andrewgr/current_domain.png)](https://travis-ci.org/andrewgr/current_domain)
[![Code Climate](https://codeclimate.com/github/andrewgr/current_domain/badges/gpa.svg)](https://codeclimate.com/github/andrewgr/current_domain)
[![Test Coverage](https://codeclimate.com/github/andrewgr/current_domain/badges/coverage.svg)](https://codeclimate.com/github/andrewgr/current_domain/coverage)

Some Rails apps have to be available on multiple domains, for example, acmeinc.com, acmeinc.ru, acmeinc.com.au. Quite often in this case the app has to know the current domain to adjust the UI or do some customization.

This gem adds `current_domain` helper method to all the controllers and views of the app. The method returns the host name at which the web app is currently accessed. It can also be customized to return custom objects for different domains if, for example, the app has Domain or Host model that represent each of the app domains.

## Installation

Add this line to your application's Gemfile:

    gem 'current_domain'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install current_domain

## Usage

Once this gem is included into Gemfile of a Rails app, `current_domain` helper method is available in all controllers and views of the applications. If an app has models or other classes that represent each app domain then add similar code to `ApplicationController` to return custom objects instead of host names:

    def find_domain(host)
      Domain.find_by_host(host)
    end

## Contributing

Your contribution is welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
