require 'yelp/fusion'

Yelp.client.configure do |config|
  config.api_key = Rails.application.secrets.yelp_api_key
end
