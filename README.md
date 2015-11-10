# Sashite::Cpn

[![Build Status](https://travis-ci.org/sashite/cpn.rb.svg?branch=master)][travis]
[![Gem Version](https://badge.fury.io/rb/sashite-cpn.svg)][gem]
[![Inline docs](http://inch-ci.org/github/sashite/cpn.rb.svg?branch=master)][inchpages]
[![Documentation](http://img.shields.io/:yard-docs-38c800.svg)][rubydoc]

Export in to the [CPN format](http://www.sashite.com/developer/wiki/Chess-Position-Notation).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sashite-cpn'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sashite-cpn

## Usage

```ruby
Sashite::Cpn.generate(false, [8, 8], ['w:r', 'w:n', 'w:b', 'w:q', 'w:^k', 'w:b', 'w:n', 'w:r',
                                      'w:p', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p', 'w:p',
                                      nil, nil, nil, nil, nil, nil, nil, nil,
                                      nil, nil, nil, nil, nil, nil, nil, nil,
                                      nil, nil, nil, nil, nil, nil, nil, nil,
                                      nil, nil, nil, nil, nil, nil, nil, nil,
                                      'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:P', 'W:P',
                                      'W:R', 'W:N', 'W:B', 'W:Q', 'W:^K', 'W:B', 'W:N', 'W:R'], [])
# => 'B--8,8--w:r,w:n,w:b,w:q,w:^k,w:b,w:n,w:r,w:p,w:p,w:p,w:p,w:p,w:p,w:p,w:p,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,W:P,W:P,W:P,W:P,W:P,W:P,W:P,W:P,W:R,W:N,W:B,W:Q,W:^K,W:B,W:N,W:R--'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sashite/cpn.rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## Versioning

__Sashite::Cpn__ follows [Semantic Versioning 2.0](http://semver.org/).

## License

See `LICENSE.md` file.

[gem]: https://rubygems.org/gems/sashite-cpn
[travis]: https://travis-ci.org/sashite/cpn.rb
[inchpages]: http://inch-ci.org/github/sashite/cpn.rb/
[rubydoc]: http://rubydoc.info/gems/sashite-cpn/frames
