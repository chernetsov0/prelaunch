Dummy::Application.routes.draw do
    prelaunch_routes

    root to: 'test#index'

    get '/test', to: 'test#index'
end
