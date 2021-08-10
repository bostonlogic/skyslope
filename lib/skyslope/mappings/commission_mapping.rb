module Skyslope
  class CommissionMapping
    include Kartograph::DSL

    kartograph do
      mapping Commission

      property :commission_breakdown, key: 'commissionBreakdown'
      property :listing_commission_amount, key: 'listingCommissionAmount'
      property :listing_commission_percent, key: 'listingCommissionPercent'
      property :office_gross_commission, key: 'officeGrossCommission'
      property :referral_amount, key: 'referralAmount'
      property :referral_amount_percent, key: 'referralAmountPercent'
      property :sale_commission_percent, key: 'saleCommissionPercent'
      property :sales_commission_amount, key: 'salesCommissionAmount'
      property :trans_coordinator_fee, key: 'transCoordinatorFee'

    end
  end
end
