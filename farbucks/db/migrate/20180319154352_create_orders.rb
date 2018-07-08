class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.decimal :subtotal, precision: 8, scale: 2

      t.timestamps
    end
  end
end
