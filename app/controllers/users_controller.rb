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

	def login		
		redirect_to "/welcome/app" if is_logged?
	end

	def signin

		redirect_to "/welcome/app" if is_logged?		
		
		@user = User.find_by(email: params["user"]["email"])

		if !!@user.authenticate(params["user"]["password"])
			session[:current_user_id] = @user.id			
			after_login
			redirect_to "/welcome/app"
		else
			redirect_to "/users/login"
		end

	end

	private
	def user_creation_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end

end
