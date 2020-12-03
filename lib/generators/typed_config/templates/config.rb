# typed: strict
# frozen_string_literal: true

TypedConfig::Schema.configure do |s|
  s.const :aws do
    s.const :access_key_id, T.nilable(String)
    s.const :secret_access_key, T.nilable(String)
  end
end
