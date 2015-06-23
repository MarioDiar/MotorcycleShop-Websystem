require 'test_helper'

class MotorcyclesControllerTest < ActionController::TestCase
  setup do
    @motorcycle = motorcycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:motorcycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create motorcycle" do
    assert_difference('Motorcycle.count') do
      post :create, motorcycle: { description: @motorcycle.description, model: @motorcycle.model, price: @motorcycle.price }
    end

    assert_redirected_to motorcycle_path(assigns(:motorcycle))
  end

  test "should show motorcycle" do
    get :show, id: @motorcycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @motorcycle
    assert_response :success
  end

  test "should update motorcycle" do
    patch :update, id: @motorcycle, motorcycle: { description: @motorcycle.description, model: @motorcycle.model, price: @motorcycle.price }
    assert_redirected_to motorcycle_path(assigns(:motorcycle))
  end

  test "should destroy motorcycle" do
    assert_difference('Motorcycle.count', -1) do
      delete :destroy, id: @motorcycle
    end

    assert_redirected_to motorcycles_path
  end
end
