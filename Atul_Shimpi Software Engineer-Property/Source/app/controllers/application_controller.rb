class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #before_filter :require_login
  protect_from_forgery with: :exception

  def app_name
    'MyProperty.com'
  end

  protected
  def authenticate_user
    if session[:user_id]
      @current_user = User.find session[:user_id]
      true
    else
      redirect_to(:controller => 'sessions', :action => 'new')
      false
    end
  end

  private
  def require_login
    unless session[:user_id]
      redirect_to(:controller => 'sessions', :action => 'new')
    end
  end
end
