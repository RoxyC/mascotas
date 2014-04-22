class Propietario

	def nombre
		
		nombre = "Ernesto"	
	
	end

	def fechacumple
		
		fechacumple = Date.new(2000,04,21)
	
	end
	
	def conteo
		
		hoy = Date.today

		fechadia = Date.new(hoy.year,fechacumple.month,fechacumple.day)
		
		if fechadia > hoy
			conteo = (fechadia - hoy).to_i
		else
			conteo = (fechadia.next_year - hoy).to_i
		end

	end
end
