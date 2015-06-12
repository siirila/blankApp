require 'test_helper'

class Api::V1::CommentsControllerTest < ActionController::TestCase
  setup do
    @api_v1_comment = api_v1_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:api_v1_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create api_v1_comment" do
    assert_difference('Api::V1::Comment.count') do
      post :create, api_v1_comment: { alternatives: @api_v1_comment.alternatives, memo: @api_v1_comment.memo, site_id: @api_v1_comment.site_id, type: @api_v1_comment.type, user: @api_v1_comment.user }
    end

    assert_redirected_to api_v1_comment_path(assigns(:api_v1_comment))
  end

  test "should show api_v1_comment" do
    get :show, id: @api_v1_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @api_v1_comment
    assert_response :success
  end

  test "should update api_v1_comment" do
    patch :update, id: @api_v1_comment, api_v1_comment: { alternatives: @api_v1_comment.alternatives, memo: @api_v1_comment.memo, site_id: @api_v1_comment.site_id, type: @api_v1_comment.type, user: @api_v1_comment.user }
    assert_redirected_to api_v1_comment_path(assigns(:api_v1_comment))
  end

  test "should destroy api_v1_comment" do
    assert_difference('Api::V1::Comment.count', -1) do
      delete :destroy, id: @api_v1_comment
    end

    assert_redirected_to api_v1_comments_path
  end
end
