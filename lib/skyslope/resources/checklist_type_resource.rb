module Skyslope
  class ChecklistTypeResource < ResourceKit::Resource
    include ErrorHandlingResourcable

    resources do

      action :all do
        verb :get
        query_keys :transactionType
        path 'api/checklistTypes'
        handler(200) do |response|
          checklist_payload = JSON.load(response.body)['value']
          ChecklistTypeMapping.extract_collection(checklist_payload.to_json, :read)
        end
      end

    end
  end
end
