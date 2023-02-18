class OrdersController < ApplicationController
    def index
        render json: Order.all, status: :ok
    end

    def create
        order = Order.create!(order_params)
        if order.valid? 
            render json: order, status: :created
        else
            render json: {error: "Something went wrong"}, status: :unprocessable_entity
        end
    end

    def show
        order = Order.find(params[:id])
        if order
            render json: order, status: :ok
        else
            render json: {error: "Something went wrong we couldn't find your order"}, status: :unprocessable_entity
        end
    end

    def update
        order = Order.find(params[:id])
        if order
            order.update!(order_params)
            render json: order, status: :ok
        else
            render json: {error: "Something went wrong!"}, status: :unprocessable_entity
        end
    end

    def destroy
        order = Order.find(params[:id])
        if order
            order.destroy
            render json: {success: "Order was successfully destroyed"}, status: :ok
        else
            render json: {error: "Ooops! We cant find your order."}, status: :unprocessable_entity
        end
    end

    def user_orders
        render json: Order.select { | item | item[:user_id] == params[:user_id] }
    end

    private

    def order_params
        params.permit(:quantity, :meal_id, :user_id)
    end
end
