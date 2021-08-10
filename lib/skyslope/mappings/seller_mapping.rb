module Skyslope
  class SellerMapping
    include Kartograph::DSL

    kartograph do
      mapping Seller

      property :alternate_phone, key: 'alternatePhone'
      property :city
      property :company
      property :email
      property :fax
      property :first_name, key: 'firstName'
      property :last_name, key: 'lastName'
      property :notes
      property :phone_number, key: 'phoneNumber'
      property :state
      property :street_name, key: 'streetName'
      property :street_number, key: 'streetNumber'
      property :zip
      property :is_trust_company_or_other_entity, key: 'isTrustCompanyOrOtherEntity'

    end
  end
end
