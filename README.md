# spring-commands-sidekiq

This gem implements the `sidekiq` command for
[Spring](https://github.com/jonleighton/spring).

## Usage

Add to your Gemfile:

``` ruby
gem "spring-commands-sidekiq", group: :development
```

If you're using spring binstubs, run `bundle exec spring binstub sidekiq` to generate `bin/sidekiq`.
Then run `spring stop` to pick up the changes.
