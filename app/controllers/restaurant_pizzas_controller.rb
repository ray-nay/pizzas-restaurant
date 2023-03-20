class RestaurantPizzasController < ApplicationController

    def index 
        rest_pizzas = RestaurantPizza.all 
        render json: rest_pizzas, except: [:created_at, :updated_at]
    end 
    def create
        rest_pizza = RestaurantPizza.create!(restaurant_pizzas_params)

        if rest_pizza.valid?
        render json: rest_pizza, status: :created, except: [:created_at, :updated_at]
        else
            render json: { "errors": ["validation errors"] }, status: :unprocessable_entity
    end 
end

    private 
    def restaurant_pizzas_params
        params.permit(:price, :pizza_id, :restaurant_id)
    end 
end
