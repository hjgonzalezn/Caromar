class UserMailer < ActionMailer::Base
  default from: "portal@hotelcarolinadelmar.com.co"
  
  def correo_reservas(datosReserva)
    @datosReserva = datosReserva
    if Rails.env.production?
      mail(to:"info@hotelcarolinadelmar.com.co", subject: "Reserva " + @datosReserva[:Nombre].upcase)
    else
      mail(to:"hjgonzalezn@gmail.com", subject: "Reserva " + @datosReserva[:Nombre].upcase)
    end
  end
  
  def correo_contactenos(datosSolicitud)
    @datosSolicitud = datosSolicitud
    if Rails.env.production?
      mail(to:"info@hotelcarolinadelmar.com.co", subject: @datosSolicitud[:TipoMensaje] + " " + @datosSolicitud[:Nombre].upcase)
    else
      mail(to:"hjgonzalezn@gmail.com", subject: @datosSolicitud[:TipoMensaje] + " " + @datosSolicitud[:Nombre].upcase)
    end    
  end
end
