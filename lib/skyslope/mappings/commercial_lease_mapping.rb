module Skyslope
  class CommercialLeaseMapping
    include Kartograph::DSL

    kartograph do
      mapping CommercialLease

      property :size
      property :size_type, key: 'sizeType'

    end
  end
end
