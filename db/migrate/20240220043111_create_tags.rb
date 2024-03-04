class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.string :title, null: false
      t.string :payment_day
      t.string :close_day
      t.integer :kind, default: 0
      t.string :color

      t.timestamps
    end
  end
end
