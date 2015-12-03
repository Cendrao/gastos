class CategoriesController < ApplicationController


	def show
		@category = Category.find(params[:id])
	end

	def create
		after_login
		@category = Category.new(category_params)
		@category.user = @current_user
		@category.save
		redirect_to "/"
	end


	private
	def category_params
		params.require(:category).permit(:name)
	end

end
