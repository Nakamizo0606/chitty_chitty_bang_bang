class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item,only: [:new, :create]

  def index
  end

  def new
    redirect_to root_path if current_user == @recruitment.user
    @order_address = OrderAddress.new
    
    # order = current_user.orders.build
    # @address = order.build_address
  end

  def create
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
       @order_address.save
       return redirect_to root_path
    else
      render action: :new
    end
  end  

  def show
  end

  private

  def order_params
    params.permit(:postal_code, :area_id, :city, :house_number, :building_name, :phone_number, :order_id, :recruitment_id).merge(user_id: current_user.id)
  end

  def set_item
    @recruitment = Recruitment.find(params[:recruitment_id])
  end
end

