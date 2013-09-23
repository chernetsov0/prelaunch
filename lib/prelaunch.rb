require 'prelaunch/engine'
require 'prelaunch/functions'
require 'prelaunch/constraints'
require 'prelaunch/routing'
require 'prelaunch/helpers'

module Prelaunch
  mattr_accessor :verify_path
  @@verify_path = 'prelaunch'

  mattr_accessor :logout_path
  @@logout_path = 'prelaunch/logout'

  mattr_accessor :token
  @@token = 'letmein'

  mattr_accessor :redirect_url
  @@redirect_url = nil

  mattr_accessor :environments
  @@environments = ['production']

  def self.valid? token
    if @@token.is_a? Proc
      @@token.call token
    elsif @@token.is_a? Array
      @@token.include? token
    else
      @@token == token
    end
  end

  def self.valid_env?
    @@environments.include? Rails.env
  end

  def self.setup
    yield self
  end
end
