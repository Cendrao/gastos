class WelcomeController < ApplicationController
	def index
		redirect_to "/welcome/app" if !!User.find(session[:current_user_id])
	end

	def app
		@categories = Category.where(user: session[:current_user_id]).order(name: :asc)
		@balance = 0

		@categories.each do |c|		

			c.entries.each do |e|
				@balance += e.value
			end
		end
	end

end
