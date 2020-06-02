class AddStageToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :stage, :integer
  end
end
