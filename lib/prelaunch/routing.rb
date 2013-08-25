module ActionDispatch::Routing
  class Mapper
    def prelaunch_routes
      return unless Prelaunch.valid_env?

      contraint = Prelaunch::Constraint.new

      get "#{Prelaunch.path}/logout", to: 'prelaunch/prelaunch#logout', as: ''
      get "#{Prelaunch.path}/:token", to: 'prelaunch/prelaunch#verify', constraints: contraint

      get '*path', to: 'prelaunch/prelaunch#redirect', constraints: contraint
      get '/'    , to: 'prelaunch/prelaunch#index'   , constraints: contraint
    end
  end
end
