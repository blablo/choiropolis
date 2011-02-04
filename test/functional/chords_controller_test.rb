require 'test_helper'

class ChordsControllerTest < ActionController::TestCase
  setup do
    @chord = chords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chord" do
    assert_difference('Chord.count') do
      post :create, :chord => @chord.attributes
    end

    assert_redirected_to chord_path(assigns(:chord))
  end

  test "should show chord" do
    get :show, :id => @chord.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @chord.to_param
    assert_response :success
  end

  test "should update chord" do
    put :update, :id => @chord.to_param, :chord => @chord.attributes
    assert_redirected_to chord_path(assigns(:chord))
  end

  test "should destroy chord" do
    assert_difference('Chord.count', -1) do
      delete :destroy, :id => @chord.to_param
    end

    assert_redirected_to chords_path
  end
end
