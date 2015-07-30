class CommentsController < ApplicationController

def create
    @whiskey = Whiskey.find(params[:whiskey_id])
    @comment = @whiskey.comments.create(comment_params)
    @comment.member = current_member
    @comment.save
    redirect_to whiskey_path(@comment.whiskey)
  end

def edit
end

def destroy
end

private
  def comment_params
    params.require(:comment).permit(:body)
  end

end
