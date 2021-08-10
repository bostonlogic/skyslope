module Skyslope
  class AttorneyContactMapping
    include Kartograph::DSL

    kartograph do
      mapping AttorneyContact

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

    end
  end
end
