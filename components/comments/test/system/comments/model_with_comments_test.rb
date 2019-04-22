require "application_system_test_case"

module Comments
  class ModelWithCommentsTest < ApplicationSystemTestCase
    setup do
      @model_with_comment = comments_model_with_comments(:one)
    end

    test "visiting the index" do
      visit model_with_comments_url
      assert_selector "h1", text: "Model With Comments"
    end

    test "creating a Model with comment" do
      visit model_with_comments_url
      click_on "New Model With Comment"

      fill_in "Commentable", with: @model_with_comment.commentable
      fill_in "Text", with: @model_with_comment.text
      click_on "Create Model with comment"

      assert_text "Model with comment was successfully created"
      click_on "Back"
    end

    test "updating a Model with comment" do
      visit model_with_comments_url
      click_on "Edit", match: :first

      fill_in "Commentable", with: @model_with_comment.commentable
      fill_in "Text", with: @model_with_comment.text
      click_on "Update Model with comment"

      assert_text "Model with comment was successfully updated"
      click_on "Back"
    end

    test "destroying a Model with comment" do
      visit model_with_comments_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Model with comment was successfully destroyed"
    end
  end
end
