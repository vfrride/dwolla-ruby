# Include the Dwolla gem
require 'rubygems'
require 'pp'
require 'dwolla'

# Include any required keys
require '_keys.rb'

# Instantiate a new Dwolla User client
# And, Sseed a previously generated access token
DwollaUser = Dwolla::User.me($token)


# EXAMPLE 1: 
#   Fetch all funding sources for the
#   account associated with the provided
#   OAuth token
sources = DwollaUser.funding_sources()
pp sources


# EXAMPLE 2: 
#   Fetch detailed information for the
#   funding source with a specific ID
source = DwollaUser.funding_source('pJRq4tK38fiAeQ8xo2iH9Q==')
pp source