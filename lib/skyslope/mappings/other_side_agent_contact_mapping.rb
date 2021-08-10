module Skyslope
  class OtherSideAgentContactMapping
    include Kartograph::DSL

    kartograph do
      mapping OtherSideAgentContact

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
      property :broker_tax_id, key: 'brokerTaxId'

    end
  end
end
