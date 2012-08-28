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
#   Fetch last 10 contacts from the 
#   account associated with the provided
#   OAuth token
contacts = DwollaUser.contacts()
pp contacts


# EXAMPLE 2: 
#   Search through the contacts of the
#   account associated with the provided
#   OAuth token
contacts = DwollaUser.contacts(:search => 'Ben')
pp contacts