require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"

Bundler.require(*Rails.groups)

require "prelaunch"

module Dummy
  class Application < Rails::Application

  end
end

