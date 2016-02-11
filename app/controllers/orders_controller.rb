class OrdersController < ApplicationController

  def index
  end

  def create
    @order = current_user.cart

    if @order.save
      flash[:success] = 'Order created'
      redirect_to edit_order_path(@order)
    else
      flash[:error] = 'Failed to create order'
      redirect_to cart_path
    end
  end

  def edit
    @order = current_user.cart
  end

end
