# typed: true
# frozen_string_literal: true

require_relative 'setup'

module TypedConfig
  class Railtie < ::Rails::Railtie
    def preload
      Setup.new.call(
        config_path: ::Rails.root.join('config'),
        env: ::Rails.env,
      )
    end

    config.before_configuration { T.unsafe(self).preload }
  end
end
