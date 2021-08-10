module Skyslope
  class CommissionBreakdownMapping
    include Kartograph::DSL

    kartograph do
      mapping CommissionBreakdown

      property :amount
      property :details
      property :name

    end
  end
end
