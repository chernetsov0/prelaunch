module Prelaunch
  class PrelaunchController < ActionController::Base
    def index
      render template: 'prelaunch/index'
    end

    def redirect
      redirect_to Prelaunch.redirect_url
    end

    def verify
      if Prelaunch::valid? params[:token]
        session[:prelaunch_token] = params[:token]
      end

      redirect_to Prelaunch.redirect_url
    end

    def logout
      if Prelaunch::valid? session[:prelaunch_token]
        session[:prelaunch_token] = nil
      end

      redirect_to Prelaunch.redirect_url
    end
  end
end
