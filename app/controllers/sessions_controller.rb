class SessionsController < ApplicationController
  
  def new
  end

  def create
    if name.nil? || name.empty?
      redirect_to login_path
    else
      session[:name] = name
      redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to login_path
  end

  private

  def name
    params.permit(:name)[:name]
  end

end
