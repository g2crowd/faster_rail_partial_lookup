# FasterRailsPartialLookup

Rails template lookup is very slow in development, due to some issues with IO in ruby core. This gem monkey patches
the path resolver, to give performance boosts.

There is a PR that addresses the issue entirely, but has not been backported into Rails yet:
https://github.com/rails/rails/pull/33860

## Installation

Add this line to your application's Gemfile:

```ruby
    gem 'faster_rail_partial_lookup', require: false
```

And then execute:

    $ bundle

## Usage

In an initializer, load the lookup in development and test:

```ruby
require 'faster_rails_partial_lookup' unless Rails.env.production?
```
