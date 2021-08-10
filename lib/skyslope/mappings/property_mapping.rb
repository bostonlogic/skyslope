module Skyslope
  class PropertyMapping
    include Kartograph::DSL

    kartograph do
      mapping Property

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
  end
end
