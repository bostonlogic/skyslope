module Skyslope
  class Commission < BaseModel
    attribute :commission_breakdown
    attribute :listing_commission_amount
    attribute :listing_commission_percent
    attribute :office_gross_commission
    attribute :referral_amount
    attribute :referral_amount_percent
    attribute :sale_commission_percent
    attribute :sales_commission_amount
    attribute :trans_coordinator_fee
  end
end
