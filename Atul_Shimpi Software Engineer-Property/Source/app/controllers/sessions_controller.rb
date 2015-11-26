class SessionsController < ApplicationController
  before_filter :authenticate_user, :except => [:new, :create, :destroy]
  skip_before_filter :require_login
  layout "login"

  def new
    reset_session
  end

  def create
    #layout 'application'
    authorized_user = User.authenticate(params[:email],params[:login_password])

    if authorized_user
      session[:user_name] = authorized_user.name
      session[:user_id] = authorized_user.id
      session[:role_id] = authorized_user.role_id

      if session[:role_id] == 3 # buyer
        redirect_to new_search_path
      else
        redirect_to properties_url
      end
    else
      flash[:notice] = 'Invalid Username or Password'
      flash[:color]= 'invalid'

      render 'new'
    end
  end

  def destroy
      session[:user] = nil
      reset_session
      redirect_to :action => 'new'
  end
end
