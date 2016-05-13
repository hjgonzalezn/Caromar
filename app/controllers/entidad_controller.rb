class EntidadController < ApplicationController
  def index
  end

  def somos
  end

  def hotel
  end

  def enviar_reserva
      
      msj = "Apreciado(a) cliente, su solicitud de reserva ha sido enviada exitosamente. En breve un funcionario del hotel se comunicara con usted para"
      msj = msj + " confirmar su orden."
      
      datosReserva = { :Nombre => params[:Nombre]                   \
                       ,:Correo => params[:Correo].pop              \
                       ,:Telefono => params[:Telefono]              \
                       ,:NroAdultos => params[:Adultos]             \
                       ,:NroNinos => params[:Ninos]                 \
                       ,:FechaIngreso => params[:FechaIngreso]      \
                       ,:FechaSalida => params[:FechaSalida]        \
                       ,:TipoHabitacion => params[:TipoHabitacion]  \
                       ,:Observacion => params[:Observacion] }
                       
      UserMailer.correo_reservas(datosReserva).deliver
      
      respond_to do |format|
        format.html { redirect_to reservas_path, notice: msj }
        #format.json { render action: 'reservas', status: :created, location: @entidad }
      end    
  end

  def enviar_solicitud_contacto
      
      msj = "Apreciado(a) cliente, hemos recibido su solicitud. En breve nos pondremos en contacto"
      msj = msj + " para brindarle una respuesta adecuada."
      
      datosSolicitud = { :Nombre => params[:Nombre]                   \
                       ,:Correo => params[:Correo].pop              \
                       ,:Telefono => params[:Telefono]              \
                       ,:TipoMensaje => params[:TipoMensaje]             \
                       ,:Mensaje => params[:Mensaje] }
                       
      UserMailer.correo_contactenos(datosSolicitud).deliver
      
      respond_to do |format|
        format.html { redirect_to contactenos_path, notice: msj }
        #format.json { render action: 'reservas', status: :created, location: @entidad }
      end    
  end


  def reservas
    @adultos = (1..10).to_a
    @ninos = (0..10).to_a
  end
  
  def galerias
  end

  def contactenos
  end

  def terminos
  end

  def bahia
  end
end
