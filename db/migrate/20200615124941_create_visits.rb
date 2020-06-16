class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.references :user, null: false, foreign_key: true, index: true, type: :uuid
      t.references :merchant, null: false, foreign_key: true, index: true, type: :uuid

      t.timestamps
    end
  end
end
