class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # for stuff we need on shared views
  before_filter :foo_function
  def foo_function
    @categories = Category.all
  end
end
