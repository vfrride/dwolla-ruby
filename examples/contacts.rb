# Include the Dwolla gem
require 'rubygems'
require 'pp'
require '/Users/michael/Repos/dwolla/dwolla-ruby/lib/dwolla.rb'

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