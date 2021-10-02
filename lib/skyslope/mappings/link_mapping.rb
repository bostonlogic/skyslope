module Skyslope
  class LinkMapping
    include Kartograph::DSL

    kartograph do
      mapping Link

      root_key singular: '', plural: 'links', scopes: [:all]

      scoped :all do
        property :href
        property :method
        property :rel
      end
    end

  end
end
