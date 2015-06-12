require 'test_helper'

class Api::V1::SitesControllerTest < ActionController::TestCase
  setup do
    @api_v1_site = api_v1_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_site" do
    assert_difference('Api::V1::Site.count') do
      post :create, api_v1_site: { url: @api_v1_site.url }
    end

    assert_redirected_to api_v1_site_path(assigns(:api_v1_site))
  end

  test "should show api_v1_site" do
    get :show, id: @api_v1_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_site
    assert_response :success
  end

  test "should update api_v1_site" do
    patch :update, id: @api_v1_site, api_v1_site: { url: @api_v1_site.url }
    assert_redirected_to api_v1_site_path(assigns(:api_v1_site))
  end

  test "should destroy api_v1_site" do
    assert_difference('Api::V1::Site.count', -1) do
      delete :destroy, id: @api_v1_site
    end

    assert_redirected_to api_v1_sites_path
  end
end
