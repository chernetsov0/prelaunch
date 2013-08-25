module ActionDispatch::Routing
  class Mapper
    def prelaunch_routes
      return unless Prelaunch.valid_env?

      get "#{Prelaunch.path}/logout", to: 'prelaunch/prelaunch#logout', as: ''
      get "#{Prelaunch.path}/:token", to: 'prelaunch/prelaunch#verify', as: ''

      get '*path', to: 'prelaunch/prelaunch#redirect', constraints: Prelaunch::Constraint.new
      get '/'    , to: 'prelaunch/prelaunch#index'   , constraints: Prelaunch::Constraint.new
    end
  end
end
