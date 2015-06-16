class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: "Tervetuloa takaisin, #{user.username}!"
    else
      redirect_to :back, notice: "Käyttäjätunnus ja/tai salasana väärin!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end