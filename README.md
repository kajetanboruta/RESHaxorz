# README

basic setup:
```
ruby 3.0.2 required
bundle i

db:
rails db:create db:migrate db:seed

user for example-1
john@example.com
123456
```
additional setup for M1:
```
bundle config set force_ruby_platform true
gem update bundler
bundle update
maybe this one too: arch -arm64e gem install nokogiri -v '1.13.6' --platform=ruby -- --use-system-libraries
```
