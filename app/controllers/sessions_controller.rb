class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name]
      if params[:name].empty?
        redirect_to login_path
      else
        session[:name] = params[:name]
        redirect_to root_path
      end
    else 
        redirect_to login_path
    end
  end

  def destroy
    session.destroy 
  end
end
