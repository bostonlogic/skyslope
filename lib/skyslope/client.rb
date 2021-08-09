require 'faraday'
require 'Base64'

module Skyslope

  class Client

    attr_reader :client_id, :client_secret
    attr_accessor :session_key

    def initialize(client_id:, client_secret:, access_key:, access_secret:)
      @client_id     = client_id
      @client_secret = client_secret
      @access_key    = access_key
      @access_secret = access_secret
    end

    def authentication
      AuthenticationResource.new(connection: authentication_connection )
    end

    private

    def authentication_connection
      @faraday_authentication ||= Faraday.new authentication_connection_options do |req|
        req.adapter :net_http
        req.response :logger, nil, { headers: true, bodies: true }
      end
    end

    def authentication_connection_options
      timestamp = Time.now.utc.strftime('%FT%TZ')

      {
        url: Skyslope.configuration.api_url,
        headers: {
          content_type:  'application/json',
          authorization: "SS #{@access_key}:#{create_hmac(timestamp)}",
          timestamp:     timestamp
        }
      }
    end

    def create_hmac(timestamp)
      Base64.encode64(
        OpenSSL::HMAC.digest('SHA256', @access_secret, "#{@client_id}:#{@client_secret}:#{timestamp}")
      ).strip
    end

  end

end

