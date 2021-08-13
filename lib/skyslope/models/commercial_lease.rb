module Skyslope
  class CommercialLease < BaseModel
    attribute :size
    attribute :size_type
    attribute :commencement_date
    attribute :ending_date
    attribute :purchase_option
    attribute :renewal_option
  end
end
