class ApplicationController < ActionController::API
  def current_user
    @_current_user ||= User.first
  end
end
