require 'test_helper'

class RegattaControllerTest < ActionController::TestCase
  setup do
    @regattum = regatta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regatta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regattum" do
    assert_difference('Regattum.count') do
      post :create, regattum: { description: @regattum.description, name: @regattum.name, organizer_id: @regattum.organizer_id }
    end

    assert_redirected_to regattum_path(assigns(:regattum))
  end

  test "should show regattum" do
    get :show, id: @regattum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regattum
    assert_response :success
  end

  test "should update regattum" do
    patch :update, id: @regattum, regattum: { description: @regattum.description, name: @regattum.name, organizer_id: @regattum.organizer_id }
    assert_redirected_to regattum_path(assigns(:regattum))
  end

  test "should destroy regattum" do
    assert_difference('Regattum.count', -1) do
      delete :destroy, id: @regattum
    end

    assert_redirected_to regatta_path
  end
end
