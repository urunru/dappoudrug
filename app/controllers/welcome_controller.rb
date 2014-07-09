class WelcomeController < ApplicationController
	def index
		@drug = Drug.new
	end
end
