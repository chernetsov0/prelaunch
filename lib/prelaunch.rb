require 'prelaunch/routing'
require 'prelaunch/constraint'
require 'prelaunch/engine'
require 'prelaunch/helpers'

module Prelaunch
  mattr_accessor :path
  @@path = 'prelaunch'

  mattr_accessor :token
  @@token = 'letmein'

  mattr_accessor :redirect_url
  @@redirect_url = nil

  mattr_accessor :environments
  @@environments = ['production']

  def self.valid? token
    if @@token.is_a? Proc
      @@token.call token
    else
      @@token == token
    end
  end

  def self.valid_env?
    @@environments.include? Rails.env
  end
end
