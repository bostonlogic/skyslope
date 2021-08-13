module Skyslope
  class LinkMapping
    include Kartograph::DSL

    kartograph do
      mapping Link

      scoped :all do
        property :href
        property :method
        property :rel
      end
    end

  end
end
