class CreateCommentsModelWithComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_model_with_comments do |t|
      t.timestamps
    end
  end
end
