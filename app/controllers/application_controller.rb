class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
 
	protect_from_forgery with: :exception

	def authenticate_admin!
		redirect_to root_path if params[:arash].blank? && !session[:admin]
		session[:admin] = true
	end

	def detect_device!
		if params[:device].blank? || params[:device][:did].blank?
			@device = nil
		else
			@device = Device.find_or_create_by_did params[:device][:did]
		end
	end

end
