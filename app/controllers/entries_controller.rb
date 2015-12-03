class EntriesController < ApplicationController
	def create
		@category = Category.find(params[:category_id])

		#Need to find something better
		if params["entry"]["expense"] == "1"
			params["entry"]["value"] = 	params["entry"]["value"].to_f * -1
		end

		@entry = @category.entries.create(entry_params)
		redirect_to "/"
	end

	private
	def entry_params
		params.require(:entry).permit(:name, :value, :date, :expense)
	end

end
