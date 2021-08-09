module Skyslope
  class AuthenticationResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # POST /auth/login
      action :login do
        verb :post
        body { |object| AuthenticationMapping.representation_for(:create, object) }
        path 'auth/login'
        handler(200) { |response| AuthenticationMapping.extract_single(response.body, :read) }
      end

    end

  end
end
