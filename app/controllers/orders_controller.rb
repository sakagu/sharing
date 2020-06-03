class OrdersController < ApplicationController

  def index
    @order = Order.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def new
    @order = Order.new
  end

  def create
    Order.create(order_params)
  end

  def show
    @order = Order.find(params[:id])
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
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date).merge(user_id: current_user.id, stage:1)
  end
  def up_order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date, :stage, :delivery_date)
  end

end
