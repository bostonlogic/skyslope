module Skyslope
  class Transaction < BaseModel
    attribute :object_type
    attribute :listing_guid
    attribute :agent_guid
    attribute :created_by_guid
    attribute :mls_number
    attribute :status
    attribute :modified_on
    attribute :office_id
    attribute :office_guid
    attribute :checklist_type
    attribute :source
    attribute :other_source
    attribute :commission, Commission
    attribute :listing_price
    attribute :email
    attribute :property, Property
    attribute :commercialLease, CommercialLease
    attribute :sellers, Array(Seller)
    attribute :buyers, Array(Buyer)
    attribute :homeWarranty_contact, HomeWarrantyContact
    attribute :miscellaneous_contact, MiscellaneousContact
    attribute :stage, Stage
    attribute :co_agent_guids
    attribute :agent
    attribute :co_agents
    attribute :custom_fields
    attribute :created_on
    attribute :co_listing_agent_guid
    attribute :referring_agent_guid
    attribute :type
    attribute :listing_date
    attribute :file_id
    attribute :expiration_date
    attribute :company
    attribute :sale_guid
    attribute :escrow_number
    attribute :status_id
    attribute :escrow_closing_date
    attribute :actual_closing_date
    attribute :contract_accepted_date
    attribute :deal_type
    attribute :sale_price
    attribute :is_office_lead
    attribute :co_broker_company
    attribute :title_contact, TitleContact
    attribute :escrow_contact, EscrowContact
    attribute :attorney_contact, AttorneyContact
    attribute :lender_contact, LenderContact
    attribute :other_side_agent_contact, OtherSideAgentContact
    attribute :commission_breakdowns, CommissionBreakdown
    attribute :commission_splits, CommissionSplit
    attribute :commission_referral, CommissionReferral
    attribute :agent
    attribute :earnest_money_deposit, EarnestMoneyDeposit
    attribute :number_of_sales
    attribute :number_of_listings
    attribute :number_of_users

  end

  # class Transaction < BaseModel
  #   objectType
  #   listingGuid
  #   agentGuid
  #   createdByGuid
  #   mlsNumber
  #   status
  #   modifiedOn
  #   officeId
  #   officeGuid
  #   checklistType
  #   source
  #   otherSource
  #   commission #
  #   listingPrice
  #   email
  #   property #
  #   commercialLease #
  #   sellers #
  #   homeWarrantyContact #
  #   miscContact #
  #   stage #
  #   coAgentGuids #
  #   agent #
  #   coAgents #
  #   customFields #
  #   createdOn
  # end

  # class Listing < Transaction
  #   coListingAgentGuid
  #   referringAgentGuid
  #   type
  #   listingDate
  #   fileId
  #   expirationDate
  #   company
  # end

  # class Sale < Transaction
  #   saleGuid
  #   escrowNumber
  #   statusId
  #   escrowClosingDate
  #   actualClosingDate
  #   contractAcceptedDate
  #   dealType
  #   salePrice
  #   isOfficeLead
  #   coBrokerCompany
  #   buyers #
  #   titleContact #
  #   escrowContact #
  #   attorneyContact #
  #   lenderContact #
  #   otherSideAgentContact #
  #   commissionBreakdowns #
  #   commissionSplits #
  #   commissionReferral #
  #   agent #
  #   earnestMoneyDeposit #
  # end
end
