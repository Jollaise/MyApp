class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
  end

  def destroy
  end

  def product_params
    params.require(:order).permit(:user_id, :product_id, :total)
  end

end
