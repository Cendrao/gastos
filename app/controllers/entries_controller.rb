class EntriesController < ApplicationController
	def create
		@category = Category.find(params[:category_id])
		@entry = @category.entries.create(entry_params)
		redirect_to "/"
	end

	private
	def entry_params
		params.require(:entry).permit(:name, :value, :date)
	end

end
