# ParksCli

Welcome to a National Parks Repository CLI Gem! Here you'll be able to get a list of USA States and Territories that will return all of their National Parks, as well as be able to select the park/s of your choice to see more information on each!


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'parks_cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parks_cli

## Usage

By running ./bin/console in your terminal you'll be retuned a list of States. From there you can select a State by typing its name in to the command line, thus returning all of the States National Parks. Once you see the park you'd like more information on simply type in the number next to the parks name and you'll be retuned information regarding said park. Once you've finished looking over your park you can type 'list' to look at more parks or 'exit' to exit the program.  

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/parks_cli.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
