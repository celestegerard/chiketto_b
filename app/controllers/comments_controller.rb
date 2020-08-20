class CommentsController < ApplicationController
  def create
    @prize = Prize.find(params[:prize_id])
    @comment = @prize.comments.create(comment_params)
    redirect_to prize_path(@prize)
  end

  def destroy
    @prize = Prize.find(params[:prize_id])
    @comment = @prize.comments.find(params[:id])
    @comment.destroy
    redirect_to prize_path(@prize)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
