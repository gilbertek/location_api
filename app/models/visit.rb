class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :merchant

  self.implicit_order_column = "created_at"
end
