module Skyslope
  class CommissionSplitMapping
    include Kartograph::DSL

    kartograph do
      mapping CommissionSplit

      property :agent_guid
      property :amount
      property :percentage

    end
  end
end
