require "skyslope/version"
require 'skyslope/configuration'
require 'resource_kit'
require 'kartograph'

module Skyslope

  autoload :Client, 'skyslope/client'

  autoload :BaseModel, 'skyslope/models/base_model'

  autoload :AttorneyContact, 'skyslope/models/contact'
  autoload :Authentication, 'skyslope/models/authentication'
  autoload :Buyer, 'skyslope/models/contact'
  autoload :CommercialLease, 'skyslope/models/commercial_lease'
  autoload :Commission, 'skyslope/models/commission'
  autoload :CommissionBreakdown, 'skyslope/models/commission_breakdown'
  autoload :CommissionReferral, 'skyslope/models/commission_referral'
  autoload :CommissionSplit, 'skyslope/models/commission_split'
  autoload :EarnestMoneyDeposit, 'skyslope/models/earnest_money_deposit'
  autoload :EscrowContact, 'skyslope/models/contact'
  autoload :HomeWarrantyContact, 'skyslope/models/home_warranty_contact'
  autoload :LenderContact, 'skyslope/models/contact'
  autoload :MiscellaneousContact, 'skyslope/models/contact'
  autoload :Office, 'skyslope/models/office'
  autoload :OtherSideAgentContact, 'skyslope/models/contact'
  autoload :Property, 'skyslope/models/property'
  autoload :Seller, 'skyslope/models/contact'
  autoload :Stage, 'skyslope/models/stage'
  autoload :TitleContact, 'skyslope/models/contact'
  autoload :Transaction, 'skyslope/models/transaction'
  autoload :User, 'skyslope/models/user'

  autoload :AuthenticationResource, 'skyslope/resources/authentication_resource'
  autoload :OfficeResource, 'skyslope/resources/office_resource'
  autoload :TransactionResource, 'skyslope/resources/transaction_resource'
  autoload :UserResource, 'skyslope/resources/user_resource'

  autoload :ErrorHandlingResourcable, 'skyslope/error_handling_resourcable'

  autoload :AttorneyContactMapping, 'skyslope/mappings/attorney_contact_mapping'
  autoload :AuthenticationMapping, 'skyslope/mappings/authentication_mapping'
  autoload :BuyerMapping, 'skyslope/mappings/buyer_mapping'
  autoload :CommercialLeaseMapping, 'skyslope/mappings/commercial_lease_mapping'
  autoload :CommissionMapping, 'skyslope/mappings/commission_mapping'
  autoload :CommissionBreakdownMapping, 'skyslope/mappings/commission_breakdown_mapping'
  autoload :CommissionReferralMapping, 'skyslope/mappings/commission_referral_mapping'
  autoload :CommissionSplitMapping, 'skyslope/mappings/commission_split_mapping'
  autoload :EarnestMoneyDepositMapping, 'skyslope/mappings/earnest_money_deposit_mapping'
  autoload :EscrowContactMapping, 'skyslope/mappings/escrow_contact_mapping'
  autoload :HomeWarrantyContactMapping, 'skyslope/mappings/home_warranty_contact_mapping'
  autoload :LenderContactMapping, 'skyslope/mappings/lender_contact_mapping'
  autoload :MiscellaneousContactMapping, 'skyslope/mappings/miscellaneous_contact_mapping'
  autoload :OfficeMapping, 'skyslope/mappings/office_mapping'
  autoload :OtherSideAgentContactMapping, 'skyslope/mappings/other_side_agent_contact_mapping'
  autoload :PropertyMapping, 'skyslope/mappings/property_mapping'
  autoload :SellerMapping, 'skyslope/mappings/seller_mapping'
  autoload :StageMapping, 'skyslope/mappings/stage_mapping'
  autoload :TitleContactMapping, 'skyslope/mappings/title_contact_mapping'
  autoload :TransactionMapping, 'skyslope/mappings/transaction_mapping'
  autoload :UserMapping, 'skyslope/mappings/user_mapping'

  class Error < StandardError; end
  class UnauthorizedError < Skyslope::Error; end
  class NotFoundError < Skyslope::Error; end
  class UnprocessableEntityError < Skyslope::Error; end

end
