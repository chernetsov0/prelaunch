module Prelaunch
  class Constraint
    def matches? request
      not Prelaunch::valid? request.session[:prelaunch_token]
    end
  end
end
