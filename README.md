# dwolla-ruby: Ruby Wrapper for Dwolla's API
=================================================================================

## Version
1.1.0

## Requirements
- [Ruby](http://www.ruby-lang.org/)

## Installation
The easiest way to install the dwolla-ruby gem for now is to use bundler and add the following line to your Gemfile:

  gem 'dwolla-ruby'

The recommended way to install dwolla-ruby is through RubyGems:

  gem install dwolla-ruby

## Usage

## Examples / Quickstart

This repo includes various usage examples, including:

* Authenticating with OAuth [oauth.rb]
* Sending money [send.rb]
* Fetching account information [accountInfo.rb]
* Grabbing a user's contacts [contacts.rb]
* Listing a user's funding sources [fundingSources.rb]
* Creating offsite gateway sessions [offsiteGateway.rb]

## Methods

Authentication Methods:

    getAuthUrl()        ==> (string) OAuth permissions page URL
    requestToken($code) ==> (string) a never-expiring OAuth access token
    setToken($token)    ==> (bool) was token saved?
    getToken()          ==> (string) current OAuth token

Users Methods:

    me()                ==> (array) the user entity associated with the token
    getUser($user_id)   ==> (array) the user entity for {$user_id}
    
Register Methods:

    register($email, $password, $pin, $firstName, $lastName, $address, $address2, $city, $state, $zip, $phone, $dateOfBirth, $acceptTerms[, $type, $organization, $ein])    ==> (array) the newly created user record
    
Contacts Methods:

    contacts([$search, $types, $limit])         ==> (array) list of contacts matching the search criteria
    nearbyContacts([$search, $types, $limit])   ==> (array) list of nearby spots matching the search criteria
    
Funding Sources Methods:

    fundingSources()    ==> (array) a list of funding sources associated with the token
    fundingSource($id)  ==> (array) information about the {$id} funding source
    
Balance Methods:

    balance()           ==> (string) the Dwolla balance of the account associated with the token
    
Transactions Methods:

    send($pin, $destinationId, $amount[, $destinationType, $notes, $facilitatorAmount, $assumeCosts])   ==> (string) transaction ID
    request($pin, $sourceId, $amount[, $sourceType, $notes, $facilitatorAmount])                        ==> (string) request ID
    transaction($transactionId)                     ==> (array) transaction details
    listings([$sinceDate, $types, $limit, $skip])   ==> (array) a list of recent transactions matching the search criteria
    stats([$types, $sinceDate, $endDate])           ==> (array) statistics about the account associated with the token
    
Offsite Gateway Methods:

    startGatewaySession()                                           ==> (bool) did session start?
    addGatewayProduct($name, $amount[, $quantity, $description])    ==> (bool) was product added?
    verifyGatewaySignature($signature, $checkoutId, $amount)        ==> (bool) is signature valid?
    getGatewayURL($destinationId[, $orderId, $discount, $shipping, $tax, $notes, $callback])    ==> (string) checkout URL
    
Helper Methods:

    getError()          ==> (string) error message
    parseDwollaID($id)  ==> (bool) is valid Dwolla ID?
    setMode($mode)      ==> (bool) did mode change?

## Changelog

1.0.0

* Reworked Gem.

## Credits

This wrapper is a forked extension of Jefferson Girao's &lt;@jeffersongirao&gt; 'dwolla' module.

- Michael Schonfeld &lt;michael@dwolla.com&gt;
- Jefferson Gir�o &lt;contato@jefferson.eti.br&gt;

## Support

- Dwolla API &lt;api@dwolla.com&gt;
- Michael Schonfeld &lt;michael@dwolla.com&gt;

## References / Documentation

http://developers.dwolla.com/dev

## License 

(The MIT License)

Copyright (c) 2013 Dwolla &lt;michael@dwolla.com&gt;

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
