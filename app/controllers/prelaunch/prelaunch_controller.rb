module Prelaunch
  class PrelaunchController < ActionController::Base
    def index
      if Prelaunch.redirect_url
        redirect_to Prelaunch.redirect_url
      else
        render template: 'prelaunch/index'
      end
    end

    def redirect
      redirect_to '/'
    end

    def verify
      session[:prelaunch_token] = params[:token]

      redirect_to '/'
    end

    def logout
      if Prelaunch::valid? session[:prelaunch_token]
        session[:prelaunch_token] = nil
      end

      redirect_to '/'
    end
  end
end
