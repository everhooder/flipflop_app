require 'test_helper'

class DrunkardsControllerTest < ActionController::TestCase
  setup do
    @drunkard = drunkards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drunkards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drunkard" do
    assert_difference('Drunkard.count') do
      post :create, drunkard: { birthday: @drunkard.birthday, comment: @drunkard.comment, email: @drunkard.email, name: @drunkard.name, surname: @drunkard.surname }
    end

    assert_redirected_to drunkard_path(assigns(:drunkard))
  end

  test "should show drunkard" do
    get :show, id: @drunkard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drunkard
    assert_response :success
  end

  test "should update drunkard" do
    patch :update, id: @drunkard, drunkard: { birthday: @drunkard.birthday, comment: @drunkard.comment, email: @drunkard.email, name: @drunkard.name, surname: @drunkard.surname }
    assert_redirected_to drunkard_path(assigns(:drunkard))
  end

  test "should destroy drunkard" do
    assert_difference('Drunkard.count', -1) do
      delete :destroy, id: @drunkard
    end

    assert_redirected_to drunkards_path
  end
end
