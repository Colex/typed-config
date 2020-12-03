# typed: false
# frozen_string_literal: true

namespace 'typed-config' do
  task rbi: :environment do
    puts 'Generating RBI files...'
    rbi = Config::Schema.rbi
    FileUtils.mkdir_p(::Rails.root.join('sorbet', 'typed-config'))
    File.write(::Rails.root.join('sorbet', 'typed-config', 'structs.rbi'), rbi)
    puts 'RBI files updated in sorbet/typed-config.'
  end
end
