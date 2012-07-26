require 'test_helper'

class UserProfilesControllerTest < ActionController::TestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post :create, user_profile: { application: @user_profile.application, city: @user_profile.city, email: @user_profile.email, firstname: @user_profile.firstname, house_number: @user_profile.house_number, mobile: @user_profile.mobile, name: @user_profile.name, phone: @user_profile.phone, postal_code: @user_profile.postal_code, street: @user_profile.street, surname: @user_profile.surname }
    end

    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should show user_profile" do
    get :show, id: @user_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_profile
    assert_response :success
  end

  test "should update user_profile" do
    put :update, id: @user_profile, user_profile: { application: @user_profile.application, city: @user_profile.city, email: @user_profile.email, firstname: @user_profile.firstname, house_number: @user_profile.house_number, mobile: @user_profile.mobile, name: @user_profile.name, phone: @user_profile.phone, postal_code: @user_profile.postal_code, street: @user_profile.street, surname: @user_profile.surname }
    assert_redirected_to user_profile_path(assigns(:user_profile))
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete :destroy, id: @user_profile
    end

    assert_redirected_to user_profiles_path
  end
end
