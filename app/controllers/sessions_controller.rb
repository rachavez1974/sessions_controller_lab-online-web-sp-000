class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name].nil? 
      if !params[:name].empty?
        session[:name] = params[:name]
        redirect_to root_path
      else
        redirect_to login_path
      end
    else
      redirect_to login_path
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    end
  end
end
