class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource_or_scope)
    admin_dashboard_path
  end

  def access_denied(exception)
    redirect_to admin_dashboard_path, alert: exception.message
  end
end
