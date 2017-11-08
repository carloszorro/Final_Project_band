class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to comments_path
    else
      render 'root_path'
    end
  end

  def new
    @comment = Comment.new
  end

  def index
    @comments = Comment.all
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(params[:comment].permit(:comment))
      redirect_to comments_path
    else
      render 'edit'
    end
  end


private

  def comment_params
    params.require(:comment).permit(:user_id, :comment)
  end

end
