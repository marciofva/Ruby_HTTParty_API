require "cucumber"
require 'httparty'
require "httparty/request"
require "httparty/response/headers"
require "faker"
require "rspec"
require "pry"
require 'json-schema'

# loads factories
require_relative "../../fixtures/factories/token_factory"

# enables https calls
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
HTTParty::Basement.default_options.update(verify: false)

ENV['ENV'] = 'qa' unless ENV.has_key?'ENV'

# loads configurations
ENVIRONMENT = (YAML.load_file('./configuration/environment.yml'))[ENV['ENV']]
AUTH = (YAML.load_file('./configuration/authentication.yml'))['RCHLO']
