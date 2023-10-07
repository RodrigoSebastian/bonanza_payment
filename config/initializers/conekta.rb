require 'conekta'

Conekta.configure do |config|
   config.access_token = ENV['CONEKTA_API_KEY']
 end