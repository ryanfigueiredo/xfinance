class FinanceTransaction < ApplicationRecord
  has_many :payers_finance_transactions, dependent: :destroy
  has_many :payers, :through => :payers_finance_transactions

  has_many :tags_finance_transactions, dependent: :destroy
  has_many :tags, :through => :tags_finance_transactions

  validates :title, presence: true
  validates :real_amount, presence: true
  before_validation :set_month

  before_validation :validate_installments
  before_validation :set_purchase_date

  after_save :propagate_finance_transactions

  accepts_nested_attributes_for :payers_finance_transactions
  accepts_nested_attributes_for :tags_finance_transactions

  enum :kind, { revenue: 0, expense: 1 }, default: :expense

  scope :per_month, ->(month) {
    includes(:payers, :tags)
    .where(month: month)
  }

  scope :by_tags, -> {
    group_by do |finance_transaction|
      [finance_transaction.tags.first.title, finance_transaction.tags.first.id]
    end
  }

  def validate_installments
    self.installments = 'Cash' if self.installments.blank?
  end

  def validate_fake_amount
    self.fake_amount = self.real_amount if self.fake_amount.blank?
  end

  def set_purchase_date
    self.purchase_date = Date.today if self.purchase_date.nil?
  end

  def set_month
    if self.month.nil?
      installments_paid, total_installments = self.installments.split('/')

      if installments_paid == 1
        self.month = self.purchase_date.strftime("%B").downcase
      else
        current_month_index = current_month_index(self.purchase_date.strftime("%B").downcase)
        self.month = Date::MONTHNAMES.compact[(current_month_index + installments_paid.to_i) - 12].downcase
      end
    else
      self.month = month.downcase
    end
  end

  def installments_cash?
    self.installments == 'Cash'
  end

  def propagate_finance_transactions
    return if installments_cash?

    finance_transaction_attributes = self.attributes
    installments_paid, total_installments = self.installments.split('/')

    if installments_paid.to_i != total_installments.to_i
      current_month_index = current_month_index(self.month)

      finance_transaction_attributes.merge!("installments" => "#{installments_paid.to_i + 1}/#{total_installments}")
      finance_transaction_attributes.merge!("month" => Date::MONTHNAMES.compact[current_month_index + 1].downcase)

      if self.tags.present?
        finance_transaction_attributes.merge!(
          tags_finance_transactions_attributes: self.tag_ids.map do |tag_id|
            {
              id: nil,
              tag_id: tag_id
            }
          end
        )

      end

      FinanceTransaction.create!(finance_transaction_attributes.except("id", "created_at", "updated_at"))
    end
  end

  def current_month_index(month)
    Date::MONTHNAMES.compact.each_index.detect{ |m| Date::MONTHNAMES.compact[m].downcase == month }
  end
end
