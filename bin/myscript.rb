require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html'
).to_s

params = {
  user: {
    name: 'Ben',
    email: 'ben@email.com'
  }

}

#puts RestClient.get(url)

puts RestClient.post(url, params)
