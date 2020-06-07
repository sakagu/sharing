class OrdersController < ApplicationController

  def index
    @orders = Order.includes(:user)
  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
  end

  def history
    @order = Order.includes(:user)
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update 
    order = Order.find(params[:id])
    order.update(up_order_params)
  end

  private
  def order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date,:order_id).merge(user_id: current_user.id, stage:1)
  end
  def up_order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date, :stage, :delivery_date)
  end

end
