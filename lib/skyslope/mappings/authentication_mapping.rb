module Skyslope
  class AuthenticationMapping
    include Kartograph::DSL

    kartograph do
      mapping Authentication

      scoped :read do
        property :session,    key: 'Session'
        property :expiration, key: 'Expiration'
      end

      scoped :create do
        property :client_id,     key: 'clientID'
        property :client_secret, key: 'clientSecret'
      end

    end
  end
end
