module ActionDispatch::Routing
  class Mapper
    def prelaunch_routes
      return unless Prelaunch.valid_env?

      token = Prelaunch::TokenConstraint.new

      get "#{Prelaunch.path}/logout", to: 'prelaunch/prelaunch#logout', as: ''
      get "#{Prelaunch.path}/:token", to: 'prelaunch/prelaunch#verify', constraints: token

      contraint = Prelaunch::SessionConstraint.new

      get '*path', to: 'prelaunch/prelaunch#redirect', constraints: contraint
      get '/'    , to: 'prelaunch/prelaunch#index'   , constraints: contraint
    end
  end
end
