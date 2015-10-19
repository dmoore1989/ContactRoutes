require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/2/favorites'
).to_s

puts RestClient.get(url)
#params = {user_id: 2, contact_id: 3}

#puts RestClient.delete(url)
