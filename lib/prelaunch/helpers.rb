module Prelaunch
  module Helpers
    def prelaunch_logout_link name = nil, html_options = nil, &block
      return unless Prelaunch::valid_env?

      path = Prelaunch::strip_slashes(Prelaunch.path)
      url  = "#{path}/logout"

      html_options = name if block_given?
      html_options ||= {}
      html_options[:rel] = 'nofollow'
      html_options['href'] ||= url

      content_tag(:a, name || url, html_options, &block)
    end
  end
end
