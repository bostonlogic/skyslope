module Skyslope
  class OfficeResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      # GET /api/offices
      action :all do
        verb :get
        path 'api/offices'
        handler(200) do |response|
          offices_payload = JSON.load(response.body)['value']
          OfficeMapping.extract_collection(offices_payload.to_json, :all)
        end
      end

      # GET /api/offices/{officeGuid}
      action :find do
        verb :get
        path 'api/offices/:office_guid'
        handler(200) do |response|
          office_payload = JSON.load(response.body)['value']
          OfficeMapping.extract_single(office_payload.to_json, :read)
        end
      end

    end

  end
end
