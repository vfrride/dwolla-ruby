# Dwolla Ruby API Wrapper
# API spec at http://developers.dwolla.com
require 'rubygems'
require 'faraday'
require 'multi_json'

# Version
require "dwolla/version"

# Resources
require "dwolla/connection"
require "dwolla/response/parse_json"
require "dwolla/response/follow_redirects"
require "dwolla/response/guard_server_error"

# API operations
require "dwolla/client"
require "dwolla/transaction"
require "dwolla/funding_source"
require "dwolla/user"

# Errors
require "dwolla/exceptions"

module Dwolla
  def self.endpoint=(endpoint)
    @@endpoint = endpoint
  end

  def self.endpoint
    @@endpoint
  end

  def self.user_agent=(user_agent)
    @@user_agent = user_agent
  end

  def self.user_agent
    @@user_agent
  end

  def self.debugging?
    !!@@debug
  end

  def self.debug=(debug)
    @@debug = debug
  end

  self.debug = false
  self.user_agent = "Dwolla Ruby Wrapper"
  self.endpoint = "https://www.dwolla.com/oauth/rest"
end

