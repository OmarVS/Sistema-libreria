class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_name(params[:session][:name])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
        else
        	flash.now[:error] = 'Nombre o contraseña inválida' 
        	render 'new'	
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

	private
		def session_params
			params.require(:user).permit(:name, :password)
		end
end
