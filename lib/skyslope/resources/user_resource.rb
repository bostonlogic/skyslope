module Skyslope
  class UserResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /api/users
      action :all do
        verb :get
        query_keys :includeDeactivated, :officeGuid
        path 'api/users'
        handler(200) do |response|
          users_payload = JSON.load(response.body)['value']
          UserMapping.extract_collection(users_payload.to_json, :read)
        end
      end

      # GET /api/users/{userGuid}
      action :find do
        verb :get
        path 'api/users/:user_guid'
        handler(200) do |response|
          user_payload = JSON.load(response.body)['value']
          UserMapping.extract_single(user_payload.to_json, :read)
        end
      end

    end

  end
end
