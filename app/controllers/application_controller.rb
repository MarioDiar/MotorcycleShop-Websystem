class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception

#setting that the layout can change depending the controller
layout :layout_by_resource

#redirecting admin to dashboard after he logs in
def after_sign_in_path_for(resource)
	'/dashboard'
end

protected
	#defining specific use of a layout for the dashboard and normal
	def layout_by_resource
		if devise_controller?
			"dashboard"
		else
			"application"
		end
	end

end
