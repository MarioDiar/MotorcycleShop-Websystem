class DashboardController < ApplicationController
	layout "dashboard"
	before_action :authenticate_admin!

	#Displays dashboard main menu
	def menu
	end
end
