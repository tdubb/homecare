require 'test_helper'

class HcsControllerTest < ActionController::TestCase
  setup do
    @hc = hcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hc" do
    assert_difference('Hc.count') do
      post :create, hc: { about: @hc.about, contact: @hc.contact, employment: @hc.employment, home: @hc.home, services: @hc.services, why: @hc.why }
    end

    assert_redirected_to hc_path(assigns(:hc))
  end

  test "should show hc" do
    get :show, id: @hc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hc
    assert_response :success
  end

  test "should update hc" do
    patch :update, id: @hc, hc: { about: @hc.about, contact: @hc.contact, employment: @hc.employment, home: @hc.home, services: @hc.services, why: @hc.why }
    assert_redirected_to hc_path(assigns(:hc))
  end

  test "should destroy hc" do
    assert_difference('Hc.count', -1) do
      delete :destroy, id: @hc
    end

    assert_redirected_to hcs_path
  end
end
