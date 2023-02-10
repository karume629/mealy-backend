class CalendarsController < ApplicationController
    def index
        render json: Calendar.all, status: :ok
    end

    def create
        day_exists = Calendar.find_by(day: calendar_params[:day])
        if day_exists
            render json: day_exists, status: :ok
        else
            day = Calendar.create!(calendar_params)
            if day.valid? 
                render json: day, status: :created
            else
                render json: {error: "Opps! Something went wrong. Try again later."}, status: :unprocessable_entity
            end
        end
    end

    def meals_per_day
        day = Calendar.find_by(day: params[:day])
        if day 
            render json: day, status: :ok
        else
            render json: {meals: []}, status: :ok
        end
    end

    def show
        day = Calendar.find(params[:id])
        if day 
            render  json: day, status: :ok
        else
            render json: {error: "Day is not avalable"}, status: :unprocessable_entity
        end
    end

    def update
        day = Calendar.find(params[:id])
        if day 
            day.update!(calendar_params)
            render  json: day, status: :ok
        else
            render json: {error: "Day is not avalable"}, status: :unprocessable_entity
        end
    end

    private

    def calendar_params
        params.permit(:day)
    end
end
