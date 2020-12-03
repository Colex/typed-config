# typed: ignore
# frozen_string_literal: true

module TypedConfig
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      desc 'Generated typed-config files for Rails.'

      source_root File.expand_path('templates', __dir__)

      def copy_config
        template 'config.rb', 'config/config.rb'
      end

      def copy_settings
        template 'settings.yml', 'config/settings.yml'
        template 'settings.local.yml', 'config/settings.local.yml'
        directory 'settings', 'config/settings'
      end

      def modify_gitignore
        create_file '.gitignore' unless File.file?('.gitignore')

        append_to_file '.gitignore' do
          "\nconfig/settings.local.yml\n" \
            "config/settings/*.local.yml\n" \
            "config/environments/*.local.yml\n"
        end
      end

      def generate_rbi
        rake 'typed-config:rbi'
      end
    end
  end
end
