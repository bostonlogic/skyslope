module Skyslope
  class CustomFieldMapping
    include Kartograph::DSL

    kartograph do
      mapping CustomField

      property :concierge_project_number, key: 'conciergeProjectNumber'
      property :is_concierge, key: 'isConcierge'
      property :service_type, key: 'serviceType'

    end
  end
end
