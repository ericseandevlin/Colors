class ColorsController < ApplicationController

  def index
      if( ! session[:user].nil? )
        @current_user = User.find( session[:user]['id'] )
        @colors = @current_user.colors
      else
        @colors = colors.all
      end
  end

def create
  name = params[:color][:color_name]
  info = params[:color][:color_info]
  user_id_info = session[:user]['id']
#d7e210
  @current_user = User.find( session[:user]['id'] )
  @color=Color.create(:color_name => name, :color_info => info)
  @color.users << @current_user
  redirect_to '/'
end

# def color_params
#   params.require(:color).permit(:color_name, :color_info, :user_id)
# end


  # ------------------
end #end class
