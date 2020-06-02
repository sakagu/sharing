class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :site_name,      null: false
      t.string :part_number,      null: false
      t.string :delively_place,      null: false
      t.string :order_number
      t.integer :tel
      t.string :consignee

      t.timestamps
    end
  end
end
