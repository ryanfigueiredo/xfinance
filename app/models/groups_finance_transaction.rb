class GroupsFinanceTransaction < ApplicationRecord
  belongs_to :finance_transaction
  belongs_to :group

  before_validation :set_month

  private

  def set_month
    if self.month.nil?
      self.month = self.finance_transaction.purchase_date.strftime("%B").downcase
    else
      self.month = month.downcase
    end
  end
end
