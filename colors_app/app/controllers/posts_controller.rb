class PostsController < ApplicationController

  def index
      if( ! session[:user].nil? )
        @current_user = User.find( session[:user]['id'] )
        @posts = @current_user.posts
        @colors = @current_user.colors
      else
        redirect_to '/login'
      end
  end

def create
  title_info = params[:post][:title]
  content_info = params[:post][:content]
  user_id_info = session[:user]['id']

  @post=Post.create(:title => title_info, :content => content_info, :user_id => user_id_info)
  redirect_to '/'
end

def user_params
  params.require(:user).permit(:username, :img_url, :password_hash, :password_confirmation)
end


  # ------------------
end #end Posts class
