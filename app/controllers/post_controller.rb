class PostController < ApplicationController
  def index
  	@posts= Post.all
  end

  def add
  	@name = params[:visitor_name]
  	if !@name.blank? then
  		@post = Post.create({:name => @name})
  	end
  end

  def remove
  	@posts= Post.all
  	@post = params[:id]
  	Post.find(@post).destroy
  end
end
