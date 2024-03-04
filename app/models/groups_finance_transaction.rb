class GroupsFinanceTransaction < ApplicationRecord
  belongs_to :finance_transaction
  belongs_to :group
end
