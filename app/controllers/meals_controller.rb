class MealsController < ApplicationController
    def index
        render json: Meal.page(page).per(per_page), status: :ok
    end

    def create
        meal = Meal.create!(meal_params)
        if meal.valid?
            render json: meal, status: :created
        else
            render json: meal.errors, status: :unprocessable_entity        
        end
    end

    def show
       meal = Meal.find(params[:id]) 
       if meal 
           render json: meal, status: :ok
        else
            render json: meal.errors, status: :unprocessable_entity
       end
    end

    def update
        meal = Meal.find(params[:id])
        if meal
            meal.update!(meal_params)
            render json: meal, status: :accepted
        else
            render json: meal.errors, status: :unprocessable_entity
        end
    end

    def destroy
        meal = Meal.find(params[:id])
        if meal
            meal.destroy
            render json: {success: "Deleted"}, status: :no_content
        else
            render json: meal.errors, status: :unprocessable_entity
        end
    end


    private

    def meal_params
        params.permit(:title, :price, :image, :description, :admin_id)
    end

    def per_page
        @per_page ||= params[:per_page] || 10
    end

    def page
        @page ||= params[:page] || 1
    end
end
