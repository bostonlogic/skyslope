module Skyslope
  class CommercialLeaseMapping
    include Kartograph::DSL

    kartograph do
      mapping CommercialLease

      scoped :read do
        property :size
        property :size_type, key: 'sizeType'
      end

      scoped :create, :update do
        property :commencement_date, key: 'commencementDate'
        property :ending_date, key: 'endingDate'
        property :purchase_option, key: 'purchaseOption'
        property :renewal_option, key: 'renewalOption'
        property :size
        property :size_type, key: 'sizeType'
      end

    end
  end
end
