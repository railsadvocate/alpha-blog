class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  def wrap_with_container
    @container_div = true
  end

  def no_wrap_with_container
    @container_div = false
  end
end
