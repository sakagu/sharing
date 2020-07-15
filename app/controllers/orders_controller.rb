class OrdersController < ApplicationController

  before_action :set_order, only: [:edit, :edauthority, :up_edauthority, :update, :update_detail,:show, :not_currect_user]
  before_action :not_currect_user, only: [:edit, :update, :update_detail]

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
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
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
  end
  
  def edauthority
  end

  def up_edauthority
    @order.update(up_order_params)
      if @order.stage == 3
      UserMailer.send_mail(@order).deliver_now
      end
  end


  def update 
    @order.update(up_order_params2)
  end
  
  def update_detail
    @order.update(stage: 5)
  end


  def show
  end



  private
  def order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date,:order_id,:delivery_date).merge(user_id: current_user.id, stage:1)
  end

  def up_order_params
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date, :stage, :delivery_date)
  end
  def up_order_params2
    params.require(:order).permit(:site_name, :part_number, :delively_place, :order_number, :tel, :consignee, :desired_date, :stage, :delivery_date).merge(stage:4)
  end

  def set_order
    @order = Order.find(params[:id])
  end

  def not_currect_user
    redirect_to root_path if current_user.id != @order.user_id
  end

end
