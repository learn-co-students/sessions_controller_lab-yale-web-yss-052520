class SessionsController < ApplicationController

  def new
  end

  def create
   # byebug
    if params[:name].nil?
      redirect_to login_path
    elsif params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end


end