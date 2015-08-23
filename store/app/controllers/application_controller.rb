class ApplicationController < ActionController::Base

	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	private def carrito_actual
		Carrito.find(session[:carrito_id])
rescue ActiveRecord::RecordNotFound
	carrito = Carrito.create
	session[:carrito_id] = carrito.id
	carrito
end


end
