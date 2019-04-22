# This migration comes from posts (originally 20190419023028)
class CreatePostsPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_posts do |t|
      t.string :title
      t.text :text
    end
  end
end
