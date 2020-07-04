class SessionsController < ApplicationController
  before_action :logged_in?, only: [:destroy]

  def new
  end

  def create
    # byebug
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
