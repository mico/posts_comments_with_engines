module ActsAsCommentable
  extend ActiveSupport::Concern

  module ClassMethods
    def acts_as_commentable
      has_many :comments, dependent: :destroy, as: :commentable
    end
  end
end

ActiveRecord::Base.send(:include, ActsAsCommentable)
