class CommentsController < ApplicationController
  def new
  	# Find the post using the id in the URL 
  	@post = Post.find(params[:post_id])
  	# Create a new comment for that post 
  	@comment = @post.comments.new
  end

  def create
  	# Find the post using the post_id in the URL 
  	@post = Post.find(params[:post_id])
  	# Create a new comment for that @post 
  	@comment = @post.comments.new(comment_params)
  	# if it saves 
	  	if @post.save 
	  		redirect_to @post
	  	else 
	  		render :new 
  	end 
  end

  def destroy 
  	@post = Post.find(params[:post_id])
  	@comment = Comment.find(params[:id])
  	@comment.destroy 
  	redirect_to @post
  end 

  private 
  def comment_params
  	params.require(:comment).permit(:body)
	end
end
