class AddOrderIdToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :order_id, :integer
  end
end
