class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "New Post Added!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "New Post Not Created"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
   @post = Post.find(params[:id])
   if @post.update_attributes(post_params)
     flash[:notice] = "Post Updated!"
     redirect_to user_path(current_user)
   else
     render 'edit'
   end
 end

 def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = 'Post has been deleted.'
      redirect_to user_path(current_user)
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :body
    )
  end

end
