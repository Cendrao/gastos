class WelcomeController < ApplicationController
	def index

		if !!session[:current_user_id]
			redirect_to "/welcome/app" if !!User.find(session[:current_user_id])
		end

	end

	def app
		after_login

		@categories = Category.where(user: session[:current_user_id]).order(name: :asc)

		@balance = @categories.map { |c| c.entries.where("date <= ?",  Date.today).sum(:value) }
		@balance = @balance.inject{ |sum, x | sum + x }

	end

end
