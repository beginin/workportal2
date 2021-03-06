require 'test_helper'

class UserlogsControllerTest < ActionController::TestCase
  setup do
    @userlog = userlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userlog" do
    assert_difference('Userlog.count') do
      post :create, :userlog => { :comp => @userlog.comp, :in => @userlog.in, :user => @userlog.user }
    end

    assert_redirected_to userlog_path(assigns(:userlog))
  end

  test "should show userlog" do
    get :show, :id => @userlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @userlog
    assert_response :success
  end

  test "should update userlog" do
    put :update, :id => @userlog, :userlog => { :comp => @userlog.comp, :in => @userlog.in, :user => @userlog.user }
    assert_redirected_to userlog_path(assigns(:userlog))
  end

  test "should destroy userlog" do
    assert_difference('Userlog.count', -1) do
      delete :destroy, :id => @userlog
    end

    assert_redirected_to userlogs_path
  end
end
