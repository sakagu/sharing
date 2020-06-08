class OrdersController < ApplicationController

  def index
    @orders = Order.includes(:user)
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.create(order_params)
    if @order.save
    else
      render :new
    end
  end

  def history
    @order = Order.includes(:user)
  end

  def search
    return nil if params[:keyword] == ""
    @orders = Order.where(['site_name LIKE ?', "%#{params[:keyword]}%"] )
    respond_to do |format|
      format.json
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update 
    order = Order.find(params[:id])
    order.update(up_order_params)
  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date,:order_id,:delivery_date).merge(user_id: current_user.id, stage:1)
  end
  def up_order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date, :stage, :delivery_date)
  end

end
