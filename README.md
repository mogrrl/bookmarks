# zapier

**Developed in Ruby 2.3.1 on MacOSX**

Quick and dirty installation (MacOSX)
* `curl -sSL https://get.rvm.io`
* `rvm install 2.3.1`
* `gem install bundler`
* `bundle init`
* edit Gemfile to read: 
```
    # frozen_string_literal: true
    source "https://rubygems.org"
    gem 'selenium-webdriver'
    gem 'rspec'
```
* `bundle install`
* `rspec --init`

**From repo root run:**
`rspec --format documentation spec/zapier.rb`

-----
**For passing tests, output is as follows:**
```
$ rspec --format documentation spec/zapier.rb

Homepage Logo Check
  with the Zapier homepage loaded
    it confirms the presence of the masthead logo
    it confirms the presence of the footer logo

Finished in 5.13 seconds (files took 0.18284 seconds to load)
2 examples, 0 failures
```
