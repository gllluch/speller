class HTTPClient

  def get(url, params)
    require 'HTTParty'
    require "addressable/uri"
    uri = Addressable::URI.parse(url+params)
    response = HTTParty.get(uri.normalize)
    response.body
  end

end
