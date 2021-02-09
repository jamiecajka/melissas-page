class PostsController < ApplicationController

  def index
    @posts = Post.all.order("created_at DESC").paginate(page: params[:page], per_page: 5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "New Post Added!"
      redirect_to posts_path
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
     redirect_to posts_path
   else
     render 'edit'
   end
 end

 def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = 'Post has been deleted.'
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :body,
      :picture,
      :video,
      :media_type
    )
  end

end
