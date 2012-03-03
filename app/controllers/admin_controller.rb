class AdminController < ApplicationController
	before_filter :authenticate_user!
	layout "admin_application"

	def index
		
	end
end
