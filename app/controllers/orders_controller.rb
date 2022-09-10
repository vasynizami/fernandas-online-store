class OrdersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_order, only: [:index, :show, :update]
    before_action :set_order, only: [:show, :update]
  

    def index
        orders = Orders.all
        render json: @orders
    end

    def show
        @order = Order.find(params[:id])
        render json: @order, include: [:products, :charge, :address]
    end

    def create
        @order = Order.new(order_params)
        # we need to pass current user from auth req
        @order.user = @current_user
        if @order.save
          render json: @order, status: :created
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end
    
      # we dont need to use currentuser cos it's already in the body of the order
      def update
        if @order.update(order_params)
          render json: @order
        else
          render json: @order.errors, status: :unprocessable_entity
        end
      end
  

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:order_id])
    end

    def set_order
      @order = Order.find(params[:id])
      # if we needed show orders by the current user, we'd use smth like (????)
      # @order = @current_user.order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:user_id, :first_name, :last_name, :address_id, :price_cents)
    end
  end
  
