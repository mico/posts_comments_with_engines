require 'test_helper'

module Comments
  class ModelWithCommentsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @model_with_comment = comments_model_with_comments(:one)
    end

    test "should get index" do
      get model_with_comments_url
      assert_response :success
    end

    test "should get new" do
      get new_model_with_comment_url
      assert_response :success
    end

    test "should create model_with_comment" do
      assert_difference('ModelWithComment.count') do
        post model_with_comments_url, params: { model_with_comment: { commentable: @model_with_comment.commentable, text: @model_with_comment.text } }
      end

      assert_redirected_to model_with_comment_url(ModelWithComment.last)
    end

    test "should show model_with_comment" do
      get model_with_comment_url(@model_with_comment)
      assert_response :success
    end

    test "should get edit" do
      get edit_model_with_comment_url(@model_with_comment)
      assert_response :success
    end

    test "should update model_with_comment" do
      patch model_with_comment_url(@model_with_comment), params: { model_with_comment: { commentable: @model_with_comment.commentable, text: @model_with_comment.text } }
      assert_redirected_to model_with_comment_url(@model_with_comment)
    end

    test "should destroy model_with_comment" do
      assert_difference('ModelWithComment.count', -1) do
        delete model_with_comment_url(@model_with_comment)
      end

      assert_redirected_to model_with_comments_url
    end
  end
end
