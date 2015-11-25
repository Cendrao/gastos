class WelcomeController < ApplicationController
	def index
		@categories = Category.all.order(name: :asc)
		@balance = 0

		@categories.each do |c|		

			c.entries.each do |e|
				@balance += e.value
			end
		end
	end
end
