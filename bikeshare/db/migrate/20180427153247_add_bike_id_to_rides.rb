class AddBikeIdToRides < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :bike_id, :integer
  end
end
