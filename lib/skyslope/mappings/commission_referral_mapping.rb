module Skyslope
  class CommissionReferralMapping
    include Kartograph::DSL

    kartograph do
      mapping CommissionReferral

      property :amount
      property :brokerage_name
      property :contact
      property :percent

    end
  end
end
