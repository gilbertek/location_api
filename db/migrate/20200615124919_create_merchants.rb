class CreateMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :merchants, id: :uuid do |t|
      t.string :merchant_name

      t.timestamps
    end
  end
end
