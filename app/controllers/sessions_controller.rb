class SessionsController < ApplicationController

  layout false
  def new
    redirect_to '/auth/google_oauth2'
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.where(:provider => auth['provider'],
                      :uid => auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    if current_user.admin?
      redirect_to users_url, :notice => "Bienvenido : #{user.name}"
    else
      redirect_to root_url, :notice => "Bienvenido : #{user.name}"
    end
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end
end
