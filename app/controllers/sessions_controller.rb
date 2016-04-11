class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			log_in
			redirect_to products_path
		else
			flash.now[:error] = 'Nombre de usuario o contraseña incorrecto'
			redirect_to login_url
		end
	end

	def destroy
		log_out if logged_in?
		redirect_to login_url
	end



end