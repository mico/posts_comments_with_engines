class CreateCommentsComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_comments do |t|
      t.text :text
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end
end
