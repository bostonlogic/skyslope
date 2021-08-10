module Skyslope
  class StageMapping
    include Kartograph::DSL

    kartograph do
      mapping Stage

      property :id
      property :name
    end
  end
end
