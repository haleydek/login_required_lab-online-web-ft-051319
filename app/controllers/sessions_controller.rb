class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to secrets_new_path
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    redirect_to sessions_new_path
  end
end