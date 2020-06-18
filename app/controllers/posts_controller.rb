class PostsController < ApplicationController
  before_action :set_post, only: [:show]


  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :description, :body)
    end
end
