require 'acts_as_commentable'

module Comments
  class ModelWithComment < ApplicationRecord
    acts_as_commentable
  end
end
