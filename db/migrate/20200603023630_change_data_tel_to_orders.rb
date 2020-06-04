class ChangeDataTelToOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :tel, :string
  end
end
