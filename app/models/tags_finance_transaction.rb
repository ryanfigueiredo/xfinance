class TagsFinanceTransaction < ApplicationRecord
  belongs_to :finance_transaction
  belongs_to :tag
end
