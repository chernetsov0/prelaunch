module Prelaunch
  module Generators
    class ViewGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      desc "Description:\n  Copy Prelaunch view for customization"

      def copy_views
        copy_file 'prelaunch/index.html', 'app/views/prelaunch/index.html'
      end
    end
  end
end
