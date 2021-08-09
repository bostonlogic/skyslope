module Skyslope
  class OfficeMapping
    include Kartograph::DSL

    kartograph do
      mapping Office

      root_key singular: 'office', plural: 'offices', scopes: [:all, :read]

      scoped :all do
        property :office_guid, key: 'officeGuid'
        property :office_name, key: 'officeName'
      end

      scoped :read do
        property :office_guid, key: 'guid'
        property :office_name, key: 'name'
      end

    end
  end
end
