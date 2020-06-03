class OrdersController < ApplicationController

  def index

  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
  end

  # def update 
  #   order = Order.find(params[:id])
  #   order.update(order_params)
  # end

  private
  def order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date).merge(user_id: current_user.id, stage:1)
  end

end

# t.string :site_name,      null: false
# t.string :part_number,      null: false
# t.string :delively_place,      null: false
# t.string :order_number
# t.integer :tel
# t.string :consignee
