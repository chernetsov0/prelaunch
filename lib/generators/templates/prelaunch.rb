# Use this hook to configure prelaunch
Prelaunch.setup do |config|
  # The prefix for prelaunch routes. Prelaunch creates two routes:
  # * '<path>/:token' for token verification.
  # * '<path>/logout' for erasing current session.
  config.path  = 'prelaunch'

  # The authentication token to use. This could either be a:
  # * String to compare to. You can put it in the ENV so you can change token without redeploy.
  # * Proc which will be called every time authentication of the token is needed.
  config.token = 'letmein'

  # Environments prelaunch will add routes to and render helper in.
  # For all other environments it would look nonexistent.
  config.environments = ['production']

  # You can optionally redirect users to other path when they query the homepage
  # or try to authenticate with invalid token instead of rendering prelaunch page.
  # config.redirect_url = 'http://example.com'
end
