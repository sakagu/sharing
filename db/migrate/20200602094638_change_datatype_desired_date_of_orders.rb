class ChangeDatatypeDesiredDateOfOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :desired_date, :string
  end
end
