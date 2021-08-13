module Skyslope
  class Sale < BaseModel
    attribute :sale_guid
    attribute :status
    attribute :escrow_closing_date
    attribute :actual_closing_date
    attribute :property_address
    attribute :link, Link

    attribute :agent_guid
    attribute :attorney_contact, Array(AttorneyContact)
    attribute :sellers, Array(Seller)
    attribute :buyers, Array(Buyer)
    attribute :checklist_type
    attribute :co_agent_guids
    attribute :co_broker_company
    attribute :commercialLease, CommercialLease
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
    attribute :homeWarranty_contact, HomeWarrantyContact
    attribute :is_office_lead
    attribute :lender_contact, LenderContact
    attribute :listing_guid
    attribute :listing_price
    attribute :miscellaneous_contact, MiscellaneousContact
    attribute :mls_number
    attribute :office_guid
    attribute :other_side_agent_contact, OtherSideAgentContact
    attribute :other_source
    attribute :property, Property
    attribute :sale_guid
    attribute :sale_price
    attribute :source
    attribute :stage, Stage
    attribute :status
    attribute :status_id
    attribute :title_contact, TitleContact
  end
