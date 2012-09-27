# Include the Dwolla gem
require 'rubygems'
require 'pp'
require '../lib/dwolla'

# Include any required keys
require '_keys.rb'

# Instantiate a new Dwolla User client
# And, Sseed a previously generated access token
DwollaUser = Dwolla::User.me($token)


# EXAMPLE 1: 
#   Send money ($1.00) to a Dwolla ID 
transactionId = DwollaUser.send_money_to('812-626-8794', 1.00, $pin)
pp transactionId


# EXAMPLE 2: 
#   Send money ($1.00) to an email address, with a note
transactionId = DwollaUser.send_money_to('michael@dwolla.com', 1.00, $pin, 'Email', 'Everyone loves getting money')
pp transactionId