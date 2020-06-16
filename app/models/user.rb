class User < ApplicationRecord
  has_many :visits

  self.implicit_order_column = "created_at"
end
