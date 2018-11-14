class RemovePhoneFromRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone, :integer
  end
end
