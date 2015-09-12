require 'test_helper'

class PlacesPicsControllerTest < ActionController::TestCase
  setup do
    @places_pic = places_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_pic" do
    assert_difference('PlacesPic.count') do
      post :create, places_pic: { body: @places_pic.body, place_id: @places_pic.place_id, title: @places_pic.title }
    end

    assert_redirected_to places_pic_path(assigns(:places_pic))
  end

  test "should show places_pic" do
    get :show, id: @places_pic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @places_pic
    assert_response :success
  end

  test "should update places_pic" do
    patch :update, id: @places_pic, places_pic: { body: @places_pic.body, place_id: @places_pic.place_id, title: @places_pic.title }
    assert_redirected_to places_pic_path(assigns(:places_pic))
  end

  test "should destroy places_pic" do
    assert_difference('PlacesPic.count', -1) do
      delete :destroy, id: @places_pic
    end

    assert_redirected_to places_pics_path
  end
end
