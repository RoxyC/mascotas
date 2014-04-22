class VisitantesController < ApplicationController 

	def new 
		
		@propietario = Propietario.new
		flash[:notice] = 'Bienvenido'
		flash[:alert] = 'Mi cumple esta cerca'
		render 'visitantes/new'

	end

end