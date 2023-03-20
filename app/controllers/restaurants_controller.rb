class RestaurantsController < ApplicationController

    def index 
        restaurants = Restaurant.all 
        render json: restaurants
    end 
    def show 
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end 

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end


    private 
    def render_not_found_response
        render json: {error:"Restaurant not found"}, status: :not_found
     end 
end
