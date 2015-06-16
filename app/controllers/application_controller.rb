class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :current_user
  helper_method :is_admin?

  def is_admin?
    return nil unless current_user
    current_user.admin?
  end

  def current_user
    return nil if session[:user_id].nil?
    User.find(session[:user_id])
  end

  def ensure_that_signed_in
    redirect_to :root, notice: 'Toiminto on sallittu vain kirjautuneille käyttäjille.' unless current_user
  end

  def ensure_that_admin
    redirect_to :root, notice: 'Toiminto sallittu vain ylläpitäjälle.' unless current_user.admin?
  end

end

