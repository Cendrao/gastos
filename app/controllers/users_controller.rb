class UsersController < ApplicationController

	def create
		@user = User.new(user_creation_params)

		@user.save
		session[:current_user_id] = @user.id
		after_login
		redirect_to "/welcome/app"

	end

	def new		
	end

	private
	def user_creation_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end

end
