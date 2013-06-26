# CrowFriend

A twitter <=> irc bridge.
Makes twitter as IRC-like as possible.
Built using eventmachine and twitter's streaming API.

## Motivation

Existing solutions (that I could find) do not use twitter's streaming API, and
twitter's REST API has some very miserly rate limiting.

A project for [OpenHack Victoria](http://www.meetup.com/OpenHack-Victoria/).


## Installation

Add this line to your application's Gemfile:

    gem 'crowfriend'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install crowfriend

## Usage

### Connecting
TODO

### Posting

Any message typed into the channel are posted to twitter.

### Follow/Unfollow

    /invite jhawthorn
    /kick jhawthorn

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Alternatives

* [bitlbee](http://www.bitlbee.org/)
* [minbif](https://symlink.me/projects/minbif/)
* [tircd](https://code.google.com/p/tircd/)
* [twirc](https://github.com/semifor/twirc)
