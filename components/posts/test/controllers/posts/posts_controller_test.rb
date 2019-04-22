require 'test_helper'

module Posts
  class PostsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @post = posts_posts(:one)
    end

    test "should get index" do
      get posts_url
      assert_response :success
    end

    test "should create post" do
      assert_difference('Post.count') do
        post posts_url, params: { post: { text: @post.text, title: @post.title } }
      end

      assert_redirected_to post_url(Post.last)
    end

    test "should show post" do
      get post_url(@post)
      assert_response :success
    end
  end
end
