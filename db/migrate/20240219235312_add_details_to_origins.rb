class AddDetailsToOrigins < ActiveRecord::Migration[7.1]
  def change
    add_column :origins, :close_day, :string
    add_column :origins, :kind, :integer, null: false, default: 0
  end
end
