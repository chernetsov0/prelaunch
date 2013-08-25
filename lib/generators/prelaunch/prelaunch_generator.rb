module Prelaunch
  module Generators
    class PrelaunchGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

      namespace 'prelaunch'
      desc      "Description:\n  Generate route and initializer for prelaunch"

      def copy_initializer
        template 'prelaunch.rb', 'config/initializers/prelaunch.rb'
      end

      def create_route
        route 'prelaunch_routes'
      end
    end
  end
end
