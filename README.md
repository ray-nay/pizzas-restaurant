# README
# Project Title
Phase 4 Week 1 Code Challenge: Pizzas Restaurant

### Author : Name Date
Catherine Renee Mumbi 20/03/2023


## Project Description  
This project works with  an pizza restaurant domain. It has three models: Restaurant, Pizza and RestaurantPizza. 

- A Restaurant has many Pizzas through RestaurantPizza

- A Pizza has many Restaurants through RestaurantPizza

- A RestaurantPizza belongs to a Restaurant and belongs to a Pizza



## Project Setup


Fork and clone this repository to your local machine

Navigate to the project directory in your terminal and open the project with the text editor of your choice.

Open the terminal and run bundle install to install the app's dependencies.

The app has 3 models structured in the files: pizza.rb, restaurant_pizza.rb and restaurant.rb which explain the relationships within the models.

It also has 3 corresponding controllers for the above models, located in the controllers folder which have the methods for the required CRUD methods.

The routes to make the CRUD requests are in the config/routes.rb file.

To test out the functionalities; run the server through `rails s` command on your terminal. 

1. To test out the routes for restaurants:
Navigate to "http://127.0.0.1:3000/restaurants" and "http://127.0.0.1:3000/restaurants/1" for the corresponding id. 

Try out a higher id such as "http://127.0.0.1:3000/restaurants/5" to check that the error responses are 
working. 

DELETE 

Open Postman and make a delete request with the id you want to delete.

2. To test out the routes for pizzas:

Navigate to "http://127.0.0.1:3000/pizzas"


3. To test out the routes for restaurant_pizzas:
Open Postman and make a post request with the body data structured as follows:
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 2
}
Then navigate to "http://127.0.0.1:3000/restaurants_pizzas" to confirm that it has been added.

To test out the validation error message, open Postman and make a post request with the body data structured as follows:
NB: add a price higher than that which was described in the validation range (0-30), so for instance 35.
{
  "price": 35,
  "pizza_id": 1,
  "restaurant_id": 2
}

It will display to you the validation errors.


 
## Technologies Used
1.Rails
2.Active Record
3.Bundler 
4.Git
5.Postman


*****

## Contact Information
* 1723renee@gmail.com
*****

