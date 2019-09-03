# WrappityWrap


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wrappity_wrap'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wrappity_wrap

## Usage

``` ruby
  it "returns "" when given nil" do
    expect(WrappityWrap.wrap(nil, 4)).to eq("")
  end

  it "returns "" when given empty string" do
    expect(WrappityWrap.wrap("", 4)).to eq("")
  end

  it "returns wrapped string when string is shorter than column" do
    expect(WrappityWrap.wrap("word", 6)).to eq("word")
  end

  it "returns wrapped string when string has a space before the column" do
    expect(WrappityWrap.wrap("long word", 6)).to eq("long\nword")
  end

  it "returns wrapped string when space occurs at column" do
    expect(WrappityWrap.wrap("long word", 5)).to eq("long\nword")
  end

  it "returns wrapped string when space after the column" do
    expect(WrappityWrap.wrap("verylong word", 4)).to eq("very\nlong\nword")
  end

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/wrappity_wrap. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WrappityWrap project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/wrappity_wrap/blob/master/CODE_OF_CONDUCT.md).
