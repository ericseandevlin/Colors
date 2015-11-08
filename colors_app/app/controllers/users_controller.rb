require 'digest/md5'
class UsersController < ApplicationController

  def new
  end

  def create
    username = user_params[:username]
    password = user_params[:password_hash]
    password_confirmation = user_params[:password_confirmation]

    password_hash = Digest::MD5.hexdigest( password )
    password_confirmation_hash = Digest::MD5.hexdigest( password_confirmation )

    if( password_hash != password_confirmation_hash )
        redirect_to '/users/new'

    else
     @user=User.create(:username => username, :password_hash => password_confirmation_hash)
     session[:user] = @user
     redirect_to '/'
   end
 end # end create

def user_params
  params.require(:user).permit(:username, :img_url, :password_hash, :password_confirmation)
end



# --------------------
end #end Users class
