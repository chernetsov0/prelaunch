module Prelaunch
  protected
    def self.strip_slashes string
      result = string.gsub(/^(\/|\\)+/, '').gsub(/(\/|\\)+$/, '')

      result.length > 0 ? '/' + result : result
    end
end
