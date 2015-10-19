require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1'
).to_s

#puts RestClient.get(url)
params = {user: {username: 'doug'}}

 puts RestClient.patch(url, params)
