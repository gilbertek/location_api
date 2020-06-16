class Merchant < ApplicationRecord
  has_many :visits

  validates_presence_of :merchant_name
  self.implicit_order_column = "created_at"
end
