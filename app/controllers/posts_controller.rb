class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(posts_params)

    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render 'index'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(posts_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render 'edit'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])

    @post.destroy

    redirect_to posts_path
  end

  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to posts_path, notice: "not authorized" if @post.nil?
  end

  private

  def posts_params
    params.require(:post).permit(:title, :content, :user_id)
  end
end
