class PostsController < ApplicationController
  def index
  	@posts = Post.all
  	# render :index
  end

  def show
  	# We assign an instance variable 
    @post = Post.find(params[:id])
  	# Rails sends it to the view if it's there (show)
  	# Rails renders the view (show)
  	
  end

  def new
    # Provide instance variable for form builder later 
    @post = Post.new
  end

  def create
    @post = Post.new(post_params) # make the data secure (post_params)
      # save the data from the form
      if @post.save
        redirect_to @post
      else
        render :new
      end
  end 

  def edit
    @post = Post.find(params[:id])    
  end 

  def update
    @post = Post.find(params[:id])
    # Make the data secure
    if @post.update(post_params)
        redirect_to @post
      else
        render :edit
      end
  end

  def destroy 
    @post = Post.find(params[:id])
    # Find the post for deleting 
    @post.destroy 
    # Then delete that post 
    redirect_to root_path
  end 

  private
  def post_params
      params.require(:post).permit(:title, :body, :publication, :url, :published_at, :author, :pull_quote)
  end
end


