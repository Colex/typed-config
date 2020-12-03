# typed: strict
# frozen_string_literal: true

require 'sorbet-runtime'

require 'typed_config/version'
require 'typed_config/setup'
require 'typed_config/schema'

require('typed_config/railtie') if defined?(::Rails)
