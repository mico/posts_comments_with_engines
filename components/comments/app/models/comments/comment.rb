module Comments
  class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
  end
end
