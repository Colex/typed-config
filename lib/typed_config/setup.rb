# typed: strict
# frozen_string_literal: true

require 'sorbet-coerce'
require_relative './loader'
require_relative './schema'

module TypedConfig
  class Setup
    extend T::Sig

    sig { params(loader: Loader).void }
    def initialize(loader: Loader.new)
      @loader = loader
    end

    sig { params(config_path: T.any(Pathname, String), env: String).void }
    def call(config_path:, env: T.cast(ENV['RACK_ENV'], String))
      config_file = "#{config_path}/config.rb"
      return unless File.file?(config_file)

      require_relative config_file

      settings = build_settings(config_path: config_path, env: env)
      definition = TypeCoerce[Structs::Settings].new.from(settings)
      Object.const_set(Schema.schema_const_name, definition)
    end

    private

    sig { returns(Loader) }
    attr_reader :loader

    sig do
      params(config_path: T.any(Pathname, String), env: String)
        .returns(T::Hash[String, T.untyped])
    end
    def build_settings(config_path:, env:)
      merge_settings([
        loader.load("#{config_path}/settings.yml"),
        loader.load("#{config_path}/settings/#{env}.yml"),
        loader.load("#{config_path}/settings.local.yml"),
        loader.load("#{config_path}/settings/#{env}.local.yml"),
      ])
    end

    sig do
      params(values: T::Array[T::Hash[String, T.untyped]])
        .returns(T::Hash[String, T.untyped])
    end
    def merge_settings(values)
      values.inject({}) { |prev, curr| prev.deep_merge(curr) }
    end
  end
end
