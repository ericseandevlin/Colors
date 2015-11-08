require 'digest/md5'
class SessionsController < ApplicationController

  def new

  end

  def create
    password = login_params[:password_hash]
    username = login_params[:username]

    user_object = User.find_by_username( username )
    password_hash = Digest::MD5.hexdigest( password )

    if (user_object == nil)
      @status = "Incorrect Username"
      redirect_to '/login'

    elsif ( user_object.password_hash == password_hash )
      @status = ""
      session[:user] = user_object
      redirect_to '/'
    else
      @status = "Incorrect Password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user] = nil
    redirect_to '/login'
  end

  def login_params
    params.require(:session).permit(:username, :password_hash)
  end

# ------------------
end #end Sessions class
