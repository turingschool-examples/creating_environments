## Controlling Database Environments

To start in test mode:

```bash
$ RUBY_ENV=test ruby server.rb
```

To start in production mode:

```bash
$ RUBY_ENV=production ruby server.rb
```

Running the tests in test mode:

```bash
$ RUBY_ENV=test bundle exec rake test
```
