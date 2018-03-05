module ApplicationHelper
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    current_user != nil
  end

  def authorize
    redirect_to root_path unless current_user
  end

  def current_barbershop
    @current_barbershop = current_user.barbershop.find(session[:barbershop_id]) if session[:barbershop_id]
  end
end
