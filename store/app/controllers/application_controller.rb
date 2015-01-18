class ApplicationController < ActionController::Base

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	private def carrito_actual
	
		Carrito.find(session[:id_carrito])
		rescue ActiveRecord::RecordNotFound
			carrito = Carrito.create
			session[:id_carrito] = carrito.id
			carrito
	end


end
