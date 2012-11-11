require 'test_helper'

class CameraCataloguesControllerTest < ActionController::TestCase
  setup do
    @camera_catalogue = camera_catalogues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:camera_catalogues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create camera_catalogue" do
    assert_difference('CameraCatalogue.count') do
      post :create, camera_catalogue: { brand: @camera_catalogue.brand, camera_type: @camera_catalogue.camera_type, colour: @camera_catalogue.colour, lcd_screen_size: @camera_catalogue.lcd_screen_size, megapixels_range: @camera_catalogue.megapixels_range, model_code: @camera_catalogue.model_code, model_description: @camera_catalogue.model_description, optical_zoom: @camera_catalogue.optical_zoom, price: @camera_catalogue.price, product_image: @camera_catalogue.product_image, stock_level: @camera_catalogue.stock_level }
    end

    assert_redirected_to camera_catalogue_path(assigns(:camera_catalogue))
  end

  test "should show camera_catalogue" do
    get :show, id: @camera_catalogue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @camera_catalogue
    assert_response :success
  end

  test "should update camera_catalogue" do
    put :update, id: @camera_catalogue, camera_catalogue: { brand: @camera_catalogue.brand, camera_type: @camera_catalogue.camera_type, colour: @camera_catalogue.colour, lcd_screen_size: @camera_catalogue.lcd_screen_size, megapixels_range: @camera_catalogue.megapixels_range, model_code: @camera_catalogue.model_code, model_description: @camera_catalogue.model_description, optical_zoom: @camera_catalogue.optical_zoom, price: @camera_catalogue.price, product_image: @camera_catalogue.product_image, stock_level: @camera_catalogue.stock_level }
    assert_redirected_to camera_catalogue_path(assigns(:camera_catalogue))
  end

  test "should destroy camera_catalogue" do
    assert_difference('CameraCatalogue.count', -1) do
      delete :destroy, id: @camera_catalogue
    end

    assert_redirected_to camera_catalogues_path
  end
end
