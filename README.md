# Description

This script automatically selects the last sent message in Mail.app. I use it so that I can easily setup a "Follow up with ..." OmniFocus task after sending a message.

## Required software

* OS X 10.11. It may also work on 10.10.
* Ruby 2.2.
* Bundler.

## How to use

1. Clone this repository.
1. `bundle install`
1. `bundle exec rake` - compiles the script
1. `bundle exec run` - runs the script.
1. `bundle exec help` or `bundle exec rake -T` for more information.

## Todo
* [ ] Look at 'next steps' in the script source
* [ ] Use something like automator or keyboard maestro to setup a global hotkey - OR -
* [ ] make it easy to invoke via spotlight
