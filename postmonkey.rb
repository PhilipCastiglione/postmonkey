require 'rubygems'
require 'bundler/setup'

require 'dotenv'
require 'mailchimp'
require 'pry'

Dotenv.load

MAILCHIMP_API_KEY = ENV['MAILCHIMP_API_KEY']

Excon.defaults[:ssl_verify_peer] = false # this is an unsafe thing I am doing to be lazy and let these API calls work in dev without proper SSL cert chain

mailchimp = Mailchimp::API.new(MAILCHIMP_API_KEY)
binding.pry
