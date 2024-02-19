class CreateOrigins < ActiveRecord::Migration[7.1]
  def change
    create_table :origins do |t|
      t.string :title, null: false
      t.date :payment_date

      t.timestamps
    end
  end
end
