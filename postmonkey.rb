require 'rubygems'
require 'bundler/setup'

require 'dotenv'
require 'mailchimp'
require 'gibbon'
require 'pry'

Dotenv.load

MAILCHIMP_API_KEY = ENV['MAILCHIMP_API_KEY']

# these lines are unsafe and shouldn't be used in prod - I'm just disabling ssl verification
# as mailchimp has cert issues currently; refer https://github.com/amro/gibbon/issues/173
Excon.defaults[:ssl_verify_peer] = false
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

mailchimp = Mailchimp::API.new(MAILCHIMP_API_KEY)
#gibbon = Gibbon::Request.new(api_key: MAILCHIMP_API_KEY) # for example only

binding.pry
