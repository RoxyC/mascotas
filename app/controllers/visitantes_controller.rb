class VisitantesController < ApplicationController 

	def new 
		
		#@propietario = Propietario.new
		#flash[:notice] = 'Bienvenido'
		#flash[:alert] = 'Mi cumple esta cerca'
		#render 'visitantes/new'

		@visitante = Visitante.new

	end

	def create
		@visitante = Visitante.new(secure_params)
		if @visitante.valid?
			@visitante.subscribe
			flash[:notice]= "Registrar #{@visitante.email} en nuetra lista de correo"
			redirect_to root_path
		else
			render :new
		end		
	end

	private 
	def secure_params
		params.require(:visitante).permit(:email)
	end

end