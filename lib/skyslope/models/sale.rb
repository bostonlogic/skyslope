module Skyslope
  class Sale < BaseModel
    attribute :sale_guid
    attribute :status
    attribute :escrow_closing_date
    attribute :actual_closing_date
    attribute :property_address
    attribute :link, Link
    attribute :modified_on
    attribute :agent_guid
    attribute :attorney_contact, Array(AttorneyContact)
    attribute :sellers, Array(Seller)
    attribute :buyers, Array(Buyer)
    attribute :checklist_type
    attribute :checklist_type_id
    attribute :co_agent_guids
    attribute :co_broker_company
    attribute :commercial_lease, CommercialLease
    attribute :commission, Commission
    attribute :commission_breakdowns, Array(CommissionBreakdown)
    attribute :commission_referral, CommissionReferral
    attribute :commission_splits, Array(CommissionSplit)
    attribute :contract_accepted_date
    attribute :created_by_guid
    attribute :created_on
    attribute :custom_fields
    attribute :deal_type
    attribute :earnest_money_deposit, EarnestMoneyDeposit
    attribute :escrow_contact, EscrowContact
    attribute :escrow_number
    attribute :home_warranty_contact, HomeWarrantyContact
    attribute :is_office_lead
    attribute :lender_contact, LenderContact
    attribute :listing_guid
    attribute :listing_price
    attribute :miscellaneous_contact, MiscellaneousContact
    attribute :mls_number
    attribute :office_guid
    attribute :office_id
    attribute :other_side_agent_contact, OtherSideAgentContact
    attribute :other_source
    attribute :property, Property
    attribute :sale_guid
    attribute :sale_price
    attribute :source
    attribute :source_id
    attribute :stage, Stage
    attribute :status
    attribute :status_id
    attribute :title_contact, TitleContact
    attribute :email
    attribute :agent
    attribute :co_agents
    attribute :contract_acceptance_date
    attribute :apn
    attribute :file_id
  end
end
