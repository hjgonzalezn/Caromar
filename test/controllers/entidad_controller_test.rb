require 'test_helper'

class EntidadControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get somos" do
    get :somos
    assert_response :success
  end

  test "should get hotel" do
    get :hotel
    assert_response :success
  end

  test "should get reservas" do
    get :reservas
    assert_response :success
  end

  test "should get galerias" do
    get :galerias
    assert_response :success
  end

  test "should get contactenos" do
    get :contactenos
    assert_response :success
  end

  test "should get terminos" do
    get :terminos
    assert_response :success
  end

  test "should get bahia" do
    get :bahia
    assert_response :success
  end

end
