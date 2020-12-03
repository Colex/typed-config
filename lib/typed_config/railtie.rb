# typed: true
# frozen_string_literal: true

require_relative 'setup'

module TypedConfig
  class Railtie < ::Rails::Railtie
    railtie_name :typed_config

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end

    def preload
      Setup.new.call(
        config_path: ::Rails.root.join('config'),
        env: ::Rails.env,
      )
    end

    config.before_configuration { T.unsafe(self).preload }
  end
end
