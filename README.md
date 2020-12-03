# TypedConfig

TypedConfig is a simple solution for managing multi-environment application
settings whilst maintaining type safety.

Currently, only Rails is supported out of the box.

TypedConfig is meant to run in projects using [Sorbet](https://sorbet.org/),
although it can run in projects not using it and still gain from the easy-to-configure
settings.

This project has been inspired by [Config](https://github.com/rubyconfig/config) and
it's meant to be an easy drop-in replacement with type-safety.

## Installing

Add the gem to your `Gemfile`:
```ruby
gem 'typed-config'
```

Run the install rake task to initialize the config schema and settings files:
```ruby
rails g typed_config:install
```

This will generate the schema file `config/config.rb` where the schema of the
settings should be defined, and the settings file:
```
config/settings.yml
config/settings.local.yml
config/settings/development.yml
config/settings/production.yml
config/settings/test.yml
```
It will also update the existing `.gitignore` to local settings files.

## Defining the Settings Properties
First, the schema of the Settings object must be defined in the `config/config.rb`
file, for example:
```ruby
TypedConfig::Schema.configure do |s|
  s.const :env, String
  s.const :app do
    s.const :domain, T.nilable(String)
    s.const :port, T.nilable(Integer)
  end
  s.const :support do
    s.const :email, String
  end
end
```

Now in the code, you can access any properties as a `T::Struct`. All properties will be
available across the application in a `Settings` object:
```ruby
Settings.env
Settting.support.email

# Example:
config.action_mailer.asset_host = "https://#{Settings.app.domain}"
```

## Changing the Settings
The settings are defined in YAML (with ERB support). Once the schema is defined, update
one of the settings file to load the data:
```yaml
env: <%= ENV['RACK_ENV'] %>
app:
  domain: <%= ENV['APP_DOMAIN'] %>
  port: <%= ENV.fetch('APP_PORT', 3000) %>
support:
  email: 'support@typed-config.com
```
When loaded, `typed-config` will try to automatically coerce the values to match the ones
specified in the schema.

You may define default (or different) settings for each environment by changing the
`config/settings/#{env}.yml`. For instance, to have different defaults in the test
environment, add the settings to `config/settings/test.yml`.

In order from top to bottom - the settings in the lower files overwrite the ones higher -
these are the files loaded:
```
config/settings.yml
config/settings/#{environment}.yml

config/settings.local.yml
config/settings/#{environment}.local.yml
```

## Type Safety
To make use of the type-safety feature, you must re-generate the RBI files when the schema
is changed using a rake command:
```shell
bundle exec rake typed-config:rbi
```

Now you can run sorbet to check the types of the settings properties:
```ruby
T.reveal_type(Settings.app.domain) # Revealed type: T.nilable(String)

sig { params(server_write_key: String).void }
def configure_segment(server_write_key); end


configure_segment(server_write_key: Settings.segment.server_write_key)
# Expected String but found T.nilable(String) for argument server_write_key
```
