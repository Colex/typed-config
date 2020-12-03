# typed: strict
# frozen_string_literal: true

require_relative './schema_builder'
require_relative './structs/_structs'

module TypedConfig
  class Schema
    @schema_builder = T.let(nil, T.nilable(SchemaBuilder))
    @schema_const_name = T.let('Settings', String)

    class << self
      extend T::Sig

      sig { returns(String) }
      attr_reader :schema_const_name

      sig do
        params(
          const_name: T.nilable(String),
          blk: T.proc.params(config: SchemaBuilder).void,
        ).void
      end
      def configure(const_name = nil, &blk)
        @schema_const_name = const_name || schema_const_name
        blk.call(schema_builder)
      end

      sig { returns(String) }
      def rbi
        schema_builder.build_rbi(schema_const_name)
      end

      private

      sig { returns(SchemaBuilder) }
      def schema_builder
        @schema_builder ||= SchemaBuilder.new('Settings')
      end
    end
  end
end
