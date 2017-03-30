class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end
  def edit
      @post = Post.find(params[:id])
    @post.group = @group
  end
  def destory
    redirect_to groups_path, alert:'Post deleted'
  end
  def post_params
    params.require(:post.group,:post).permit(:content)
  end

end
