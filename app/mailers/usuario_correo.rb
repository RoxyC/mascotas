class UsuarioCorreo < ActionMailer::Base
  default from: "from@example.com"

  def contacto_email(contacto)
  	#contacto.email es el email del visitante
  	#OWNER_EMAIL email del propietario del site configurado con figaro
  	@contacto = contacto
  	mail(to:ENV["OWNER_EMAIL"], from: @contacto.email, :subject =>"contacto mascotas")
  end
end
