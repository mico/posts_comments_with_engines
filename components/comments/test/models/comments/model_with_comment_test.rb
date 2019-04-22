require 'test_helper'

module Comments
  class ModelWithCommentTest < ActiveSupport::TestCase
    setup do
      @model_with_comment = comments_model_with_comments(:one)
    end

    test "should be able to add comments" do
      assert_difference('@model_with_comment.comments.count') do
        @model_with_comment.comments << Comment.new(text: 'test')
        @model_with_comment.save!
      end
    end
  end
end
