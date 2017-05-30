class OrdersController < ApplicationController
  def update
    if current_order.update_attributes order_params
      flash[:success] = t ".buy_success"
      session.delete :order_id
      redirect_to root_path
    else
      flash[:danger] = t ".cant_buy"
      redirect_to cart_path
    end
  end

  private

  def order_params
    params.require(:order).permit :address
  end
end
