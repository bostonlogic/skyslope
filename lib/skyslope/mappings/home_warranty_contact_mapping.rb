module Skyslope
  class HomeWarrantyContactMapping
    include Kartograph::DSL

    kartograph do
      mapping HomeWarrantyContact
      
        property :company
        property :confirmation_number, key: 'confirmationNumber'
        property :notes
        property :phone_number, key: 'phoneNumber'
        property :representative_name, key: 'representativeName'
    end
  end
end
