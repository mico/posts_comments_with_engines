require 'test_helper'

class PostsTest < ActionDispatch::IntegrationTest

  test 'should able to create comment for post' do
    assert_difference('Posts::Post.count') do
      post posts_url, params: { post: { text: 'test' } }
    end
  end
end