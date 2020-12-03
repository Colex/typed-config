# typed: false
# frozen_string_literal: true

require_relative './rbi_builder'
require_relative './structs/_structs'

module TypedConfig
  class SchemaBuilder
    extend T::Sig

    sig { params(struct: String, rbi_builder: RBIBuilder).void }
    def initialize(struct, rbi_builder: RBIBuilder.new)
      @rbi_builder = rbi_builder
      @struct = T.let(create_struct(Structs, struct), Class)
    end

    sig do
      params(
        name: Symbol,
        type: T.untyped,
        blk: T.nilable(T.proc.void),
      ).void
    end
    def const(name, type = nil, &blk)
      clazz = retrieve_class(name: name, type: type, &blk)
      raise ArgumentError, "Attribute '#{name}' must receive a type or block." if clazz.nil?

      rbi_builder.add_const(struct, name, clazz)
      struct.tap do |scope|
        scope.const name, clazz
      end
    end

    sig { params(schema_const_name: String).returns(String) }
    def build_rbi(schema_const_name)
      rbi_builder.build(schema_const_name)
    end

    protected

    sig { returns(Class) }
    attr_reader :struct

    sig { returns(RBIBuilder) }
    attr_reader :rbi_builder

    sig do
      params(
        name: Symbol,
        type: T.untyped,
        blk: T.nilable(T.proc.void),
      ).returns(T.untyped)
    end
    def retrieve_class(name:, type:, &blk)
      return type unless block_given?

      process_substruct(name: name, &blk)
    end

    sig { params(name: Symbol, blk: T.proc.void).returns(Class) }
    def process_substruct(name:, &blk)
      top_struct = struct
      sub_struct = create_struct(struct, name.to_s)
      @struct = sub_struct
      instance_eval(&blk)
      @struct = top_struct
      sub_struct
    end

    sig { params(base: T.any(Module, Class), name: String).returns(Class) }
    def create_struct(base, name)
      new_struct = base.const_set(name.camelcase, Class.new(T::Struct))
      rbi_builder.add_struct(new_struct)
      new_struct
    end
  end
end
