module Skyslope
  class Authentication < BaseModel
    attribute :client_id
    attribute :client_secret

    attribute :session
    attribute :expiration
  end
end
