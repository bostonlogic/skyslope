module Skyslope
  class PropertyMapping
    include Kartograph::DSL

    kartograph do
      mapping Property

      scoped :read do
        property :area_sqft, key: 'areasqft'
        property :city
        property :county
        property :direction
        property :state
        property :street_address, key: 'streetAddress'
        property :street_number, key: 'streetNumber'
        property :unit
        property :year_built, key: 'yearBuilt'
        property :zip
      end

      scoped :create do
        property :state
        property :street_number, key: 'streetNumber'
        property :direction
        property :street_address, key: 'streetAddress'
        property :unit
        property :city
        property :county
        property :zip
        property :year_built, key: 'yearBuilt'
      end

    end
  end
end
