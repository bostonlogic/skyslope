module Skyslope
  class LenderContactMapping
    include Kartograph::DSL

    kartograph do
      mapping LenderContact

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
      property :is_cash_deal, key: 'isCashDeal'
      property :loan_amount, key: 'loanAmount'
      property :loan_type_id, key: 'loanTypeId'

    end
  end
end
