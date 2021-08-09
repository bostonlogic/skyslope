module Skyslope
  class UserMapping
    include Kartograph::DSL

    kartograph do
      mapping User

      root_key singular: 'user', plural: 'users', scopes: [:read]

      scoped :read do
        property :alternate_phone, key: 'alternatePhone'
        property :city
        property :email
        property :first_name, key: 'firstName'
        property :last_name, key: 'lastName'
        property :phone
        property :public_id, key: 'publicId'
        property :state
        property :street_name, key: 'streetName'
        property :street_number, key: 'streetNumber'
        property :user_guid, key: 'userGuid'
        property :user_type, key: 'userType'
        property :zip_code, key: 'zipCode'
      end

    end
  end
end
