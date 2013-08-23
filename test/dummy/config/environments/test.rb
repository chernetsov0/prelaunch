Dummy::Application.configure do
  config.cache_classes = true
  config.eager_load    = false

  config.consider_all_requests_local = true

  config.serve_static_assets  = true
  config.static_cache_control = "public, max-age=3600"

  config.action_controller.allow_forgery_protection = false
  config.action_controller.perform_caching          = false

  config.action_dispatch.show_exceptions = false

  config.active_support.deprecation = :stderr
end
