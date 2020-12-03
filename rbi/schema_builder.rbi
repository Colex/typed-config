# typed: strong

module TypedConfig
  class SchemaBuilder
    extend T::Sig

    sig do
      params(
        name: Symbol,
        type: T.untyped,
        blk: T.nilable(T.proc.void),
      ).void
    end
    def const(name, type = nil, &blk); end
  end
end
