module Skyslope

  class Contact < BaseModel
    attribute :alternate_phone
    attribute :city
    attribute :company
    attribute :email
    attribute :fax
    attribute :first_name
    attribute :last_name
    attribute :notes
    attribute :phone_number
    attribute :state
    attribute :street_name
    attribute :street_number
    attribute :zip
  end

  class Seller < Contact
    attribute :is_trust_company_or_other_entity
  end

  class Buyer < Contact
    attribute :is_trust_company_or_other_entity
  end

  class MiscellaneousContact < Contact
    attribute :miscellaneous_contact_type
  end

  class TitleContact < Contact
  end

  class EscrowContact < Contact
  end

  class AttorneyContact < Contact
  end

  class LenderContact < Contact
    attribute :is_cash_deal
    attribute :loan_amount
    attribute :loan_type_id
  end

  class OtherSideAgentContact < Contact
    attribute :broker_tax_id
  end

end
