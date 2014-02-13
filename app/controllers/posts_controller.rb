class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
		@user = current_user
	end

	def create
		@post = Post.create(post_params)
		redirect_to root_url
	end

	private

	def post_params

		params.require(:post).permit(:body, :link)
	end

end