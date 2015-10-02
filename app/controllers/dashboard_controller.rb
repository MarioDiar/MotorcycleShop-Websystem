class DashboardController < ApplicationController
	#defininf the dashboard as the layout for this controller
	layout "dashboard"
	#authenticate that only an admin can get to this action
	before_action :authenticate_admin!

	#Displays dashboard main menu
	def menu
	end
end
