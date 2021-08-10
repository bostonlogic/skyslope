module Skyslope
  class EarnestMoneyDeposit < BaseModel
    attribute :additional_deposit_amount
    attribute :additional_deposit_due_date
    attribute :date_of_check
    attribute :date_posted_to_log_book
    attribute :deposit_amount
    attribute :deposit_due_date
    attribute :is_earnest_money_held
  end
end
