module Skyslope
  class EarnestMoneyDepositMapping
    include Kartograph::DSL

    kartograph do
      mapping EarnestMoneyDeposit

      property :additional_deposit_amount, key: 'additionalDepositAmount'
      property :additional_deposit_due_date, key: 'additionalDepositDueDate'
      property :date_of_check, key: 'dateOfCheck'
      property :date_posted_to_log_book, key: 'datePostedToLogBook'
      property :deposit_amount, key: 'depositAmount'
      property :deposit_due_date, key: 'depositDueDate'
      property :is_earnest_money_held, key: 'isEarnestMoneyHeld'

    end
  end
end
