module Prelaunch
  class Engine < ::Rails::Engine
    isolate_namespace Prelaunch

    initializer 'prelaunch.view_helpers' do
      ActionView::Base.send :include, Helpers
    end
  end
end
