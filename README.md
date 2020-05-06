Subvisual::Utils
================

Collection  of reusable Ruby utilities. Made with :heart: by Subvisual.


Installation
------------

Add this line to your application's Gemfile:

```ruby
gem "subvisual-utils"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install subvisual-utils


Usage
-----

Utilities are exposed as module methods grouped by the type of utility.


### `Subvisual::MathUtils.greatest_common_divisor(a,b)`

Computes the Greatest Common Divisor of two numbers.

```ruby
Subvisual::MathUtils.greatest_common_divisor(48, 18) # => 6
```


### `Subvisual::MathUtils.least_common_denominator(a,b)`

Computes the Least Common Denominator of two numbers.

```ruby
Subvisual::MathUtils.least_common_denominator(21, 6) # => 42
```


Development
-----------

After checking out the repo, run `bin/setup` to install dependencies. Then,
run `rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).


Contributing
------------

Bug reports and pull requests are welcome on GitHub at
https://github.com/subvisual/ruby-utils.


License
-----

Subvisual::Utils is copyright :copy: 2020 Subvisual, Lda.

It is open-source, made available for free, and is subject to the terms in
its [license].


About
-----

Subvisual::Utils is maintained with :heart: by [Subvisual][subvisual].

[![Subvisual][subvisual-logo]][subvisual]


[license]: ./LICENSE.txt
[subvisual]: http://subvisual.com
[subvisual-logo]: https://raw.githubusercontent.com/subvisual/guides/master/github/templates/logos/blue.png