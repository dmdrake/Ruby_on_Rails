class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.datetime :start
      t.datetime :end
      t.decimal :start_latitude, precision: 10, scale: 6
      t.decimal :start_longitude, precision: 10, scale: 6
      t.decimal :end_latitude, precision: 10, scale: 6
      t.decimal :end_longitude, precision: 10, scale: 6
      t.integer :initial_cost
      t.integer :minute_cost

      t.timestamps
    end
  end
end
