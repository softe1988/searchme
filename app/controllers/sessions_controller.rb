class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user_id
    redirect_to_root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to_root_url
  end
  
  protected

  #def auth_hash
  #  request.env['omniauth.auth']
  #end
end
