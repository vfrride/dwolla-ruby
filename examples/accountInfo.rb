# Include the Dwolla gem
require 'rubygems'
require 'pp'
require 'dwolla'

# Include any required keys
require '_keys.rb'

# Instantiate a new Dwolla User client
# And, Sseed a previously generated access token
DwollaClient = Dwolla::Client.new($apiKey, $apiSecret)
DwollaUser = Dwolla::User.me($token)


# EXAMPLE 1:
#   Fetch account information for the
#   account associated with the provided
#   OAuth token
pp DwollaUser.fetch


# EXAMPLE 2: 
#   Fetch basic account information
#   for a given Dwolla ID
pp DwollaClient.user('812-626-8794')


# EXAMPLE 3: 
#   Fetch basic account information
#   for a given Email address
pp DwollaClient.user('michael@dwolla.com')