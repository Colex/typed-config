# typed: strong

module TypedConfig
  class Schema
    extend T::Sig

    sig do
      params(
        const_name: T.nilable(String),
        blk: T.proc.params(config: SchemaBuilder).void,
      ).void
    end
    def self.configure(const_name = nil, &blk); end
  end
end
