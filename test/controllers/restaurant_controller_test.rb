require "test_helper"

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get pizzas" do
    get restaurant_pizzas_url
    assert_response :success
  end
end
