# typed: strict
# frozen_string_literal: true

require 'erb'

module TypedConfig
  class RBIBuilder
    extend T::Sig

    sig { void }
    def initialize
      @structs = T.let(
        {},
        T::Hash[
          String,
          T::Array[{ name: Symbol, type: String }],
        ],
      )
    end

    sig { params(struct: Class).void }
    def add_struct(struct)
      @structs[T.must(struct.name)] ||= []
    end

    sig { params(struct: Class, name: Symbol, type: T.untyped).void }
    def add_const(struct, name, type)
      add_struct(struct)
      T.must(@structs[T.must(struct.name)]).push({ name: name, type: type.name })
    end

    sig { params(schema_const_name: String).returns(String) }
    def build(schema_const_name)
      b = binding
      b.local_variable_set(:schema_const_name, schema_const_name)
      b.local_variable_set(:structs, @structs)
      template_file = File.read(File.join(File.dirname(__FILE__), 'structs.rbi.erb'))
      ERB.new(template_file, trim_mode: '>').result(b)
    end

    private

    sig { params(consts: T::Array[{ name: Symbol, type: String }]).returns(String) }
    def build_consts(consts)
      consts.inject('') do |prev, const|
        prev + "  const :#{const[:name]}, #{const[:type]}\n"
      end
    end
  end
end
