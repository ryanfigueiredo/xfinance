class CreateOrigins < ActiveRecord::Migration[7.1]
  def change
    create_table :origins do |t|
      t.string :title, null: false
      t.string :payment_day
      t.string :close_day
      t.integer :kind, default: 0
      t.references :payer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
