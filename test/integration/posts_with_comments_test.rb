require 'test_helper'

class PostsWithCommentsTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts_posts(:one)
  end

  test 'should able to create comment for post' do
    assert_difference('Comments::Comment.count') do
      post post_comments_url(@post), params: { text: 'test' }
    end
  end
end