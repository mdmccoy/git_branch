require 'rails/generators/base'

module GitBranch
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../templates/controllers", __FILE__)

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/application.scss', "*= require git_branch\n", before: /\*\//, verbose: true
      end
    end
  end
end