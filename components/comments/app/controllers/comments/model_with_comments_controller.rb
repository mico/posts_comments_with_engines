require_dependency "comments/application_controller"

module Comments
  class ModelWithCommentsController < ApplicationController
    before_action :set_model_with_comment, only: [:show, :edit, :update, :destroy]

    # GET /model_with_comments
    def index
      @model_with_comments = ModelWithComment.all
    end

    # GET /model_with_comments/1
    def show
    end

    # GET /model_with_comments/new
    def new
      @model_with_comment = ModelWithComment.new
    end

    # GET /model_with_comments/1/edit
    def edit
    end

    # POST /model_with_comments
    def create
      @model_with_comment = ModelWithComment.new(model_with_comment_params)

      if @model_with_comment.save
        redirect_to @model_with_comment, notice: 'Model with comment was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /model_with_comments/1
    def update
      if @model_with_comment.update(model_with_comment_params)
        redirect_to @model_with_comment, notice: 'Model with comment was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /model_with_comments/1
    def destroy
      @model_with_comment.destroy
      redirect_to model_with_comments_url, notice: 'Model with comment was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_model_with_comment
        @model_with_comment = ModelWithComment.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def model_with_comment_params
        params.require(:model_with_comment).permit(:text, :commentable)
      end
  end
end
