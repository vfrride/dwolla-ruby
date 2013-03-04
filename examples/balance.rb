# Include the Dwolla gem
require 'rubygems'
require 'pp'
require '../lib/dwolla'

# Include any required keys
require_relative '_keys.rb'

# Instantiate a new Dwolla User client
# And, seed a previously generated access token
DwollaUser = Dwolla::User.me($token)


# EXAMPLE 1: 
#   Get the balance of the authenticated user
balance = DwollaUser.balance
pp balance
