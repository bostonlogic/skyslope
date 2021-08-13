module Skyslope
  class SaleMapping
    include Kartograph::DSL

    kartograph do
      mapping Sale

      scoped :all do
        property :sale_guid, key: 'saleGuid'
        property :status
        property :actual_closing_date, key: 'actualClosingDate'
        property :escrow_closing_date, key: 'escrowClosingDate'
        property :property_address, key: 'propertyAddress'
        property :link, include LinkMapping
      end

      scoped :read do
        property :agent_guid, key: 'agentGuid'
        property :created_by_guid, key: 'createdByGuid'
        property :mls_number, key: 'mlsNumber'
        property :listing_guid, key: 'listingGuid'
        property :status
        property :modified_on, key: 'modifiedOn'
        property :office_id, key: 'officeId'
        property :office_guid, key: 'officeGuid'
        property :checklist_type, key: 'checklistType'
        property :source
        property :other_source, key: 'otherSource'
        property :commission, include: CommissionMapping
        property :listing_price, key: 'listingPrice'
        property :email
        property :property, include: PropertyMapping
        property :commercial_lease, key: 'commercialLease', include: CommercialLeaseMapping
        property :sellers, plural: true, include: SellerMapping
        property :home_warranty_contact, key: 'homeWarrantyContact', include: HomeWarrantyContactMapping
        property :miscellaneous_contact, key: 'miscContact', include: MiscellaneousContactMapping
        property :stage, key: 'stage', include: StageMapping
        property :co_agent_guids, plural: true, key: 'coAgentGuids'
        property :agent, plural: true
        property :co_agents, plural: true, key: 'coAgents'
        property :custom_fields, key: 'customFields'
        property :created_on, key: 'createdOn'
        property :sale_guid, key: 'saleGuid'
        property :escrow_number, key: 'escrowNumber'
        property :status_id, key: 'statusId'
        property :escrow_closing_date, key: 'escrowClosingDate'
        property :actual_closing_date, key: 'actualClosingDate'
        property :contract_acceptance_date, key: 'contractAcceptanceDate'
        property :contract_accepted_date, key: 'contractAcceptedDate'
        property :deal_type, key: 'dealType'
        property :sale_price, key: 'salePrice'
        property :is_office_lead, key: 'isOfficeLead'
        property :co_broker_company, key: 'coBrokerCompany'
        property :buyers, plural: true, include: BuyerMapping
        property :title_contact, key: 'titleContact', include: TitleContactMapping
        property :escrow_contact, key: 'escrowContact', include: EscrowContactMapping
        property :attorney_contact, plural: true, key: 'attorneyContact', include: AttorneyContactMapping
        property :lender_contact, key: 'lenderContact', include: LenderContactMapping
        property :other_side_agent_contact, key: 'otherSideAgentContact', include: OtherSideAgentContactMapping
        property :commission_breakdowns, plural: true, key: 'commissionBreakdowns', include: CommissionBreakdownMapping
        property :commission_splits, plural: true, key: 'commissionSplits', include: CommissionSplitMapping
        property :commission_referral, key: 'commissionReferral', include: CommissionReferralMapping
        property :earnest_money_deposit, key: 'earnestMoneyDeposit', include: EarnestMoneyDepositMapping
      end

      scoped :create do
        property :agent_guid, key: 'agentGuid'
        property :office_guid, key: 'officeGuid'
        property :checklist_type_id, key: 'checklistTypeId'
        property :contract_acceptance_date, key: 'contractAcceptanceDate'
        property :escrow_closing_date, key: 'escrowClosingDate'
        property :is_office_lead, key: 'isOfficeLead'
        property :mls_number, key: 'mlsNumber'
        property :sale_price, key: 'salePrice'
        property :status_id, key: 'statusId'
        property :property, include: PropertyMapping
        property :apn
        property :commercial_lease, key: 'commercialLease', include: CommercialLeaseMapping
        property :custom_fields, key: 'customFields', include: CustomFieldMapping
        property :escrow_number, key: 'escrowNumber'
        property :file_id, key: 'fileId'
        property :other_source, key: 'otherSource'
        property :source_id, key: 'sourceId'
      end

      scoped :update do
        property :actual_closing_date, key: 'actualClosingDate'
        property :apn
        property :commercial_lease, key: 'commercialLease', include: CommercialLeaseMapping
      end

    end
  end
end
