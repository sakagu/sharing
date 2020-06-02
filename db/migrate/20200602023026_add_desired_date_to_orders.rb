class AddDesiredDateToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :desired_date, :string
  end
end
