module Prelaunch
  class SessionConstraint
    def matches? request
      not Prelaunch::valid? request.session[:prelaunch_token]
    end
  end

  class TokenConstraint
    def matches? request
      path  = Prelaunch::strip_slashes(Prelaunch.path)
      match = request.fullpath.match(/^#{path}\/([A-Za-z0-9]*)([\/\?])?/)

      return false if match.nil?

      Prelaunch::valid? match[1]
    end
  end
end
