# GitBranch

Git_branch is just a simple way to expose some information about your current environment, and if you're in development, your current git branch. It was a quality of life thing that I was encouraged to turn into a gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'git_branch'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install git_branch

## Usage

Add the CSS library to your application.css.scss (or wherever you require vendor stylesheets)

     *= require git_branch
     
 You should then be able to use the partial wherever you want. I find it useful to put it on the application layout so that it's visible on every page.
 
 ```ruby
<%= render 'layouts/git_branch' %>
```

You may or may not want to include this information in production, it's up to you. Just wrap the render call in a conditional to control it's display.
```ruby
<%= render 'layouts/git_branch' unless Rails.env.production? %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mdmccoy/git_branch. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

This gem is my first attempt at extracting code from a project, and setup for how I needed. Any tips for generalizing it and making it easier for others to use would be greatly appreciated.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GitBranch project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/git_branch/blob/master/CODE_OF_CONDUCT.md).
