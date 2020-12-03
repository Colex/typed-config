# typed: strict
# frozen_string_literal: true

require 'erb'
require 'yaml'

module TypedConfig
  class Loader
    extend T::Sig

    sig { params(filename: String).returns(T::Hash[String, T.untyped]) }
    def load(filename)
      return {} unless File.file?(filename)

      contents = File.read(filename)
      T.cast(YAML.safe_load(ERB.new(contents).result), T::Hash[String, T.untyped])
    end
  end
end
