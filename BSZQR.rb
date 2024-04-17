require 'net/http'
require 'uri'

def generar_qr(url)
  # Codificar la URL para que sea segura en una consulta HTTP
  encoded_url = URI.encode_www_form_component(url)

  # URL base de la API para generar códigos QR
  api_url = "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=#{encoded_url}"

  # Realizar una solicitud GET a la API
  response = Net::HTTP.get_response(URI(api_url))

  if response.code == "200"
    # Guardar la imagen del código QR en un archivo local
    File.open("codigo_qr.png", "wb") do |file|
      file.write(response.body)
    end
    puts "¡El código QR se ha generado correctamente!"
  else
    puts "Hubo un error al generar el código QR. Inténtalo de nuevo más tarde."
  end
end

# Solicitar al usuario que ingrese la URL
puts "
▀█████████▄     ▄████████  ▄███████▄  
  ███    ███   ███    ███ ██▀     ▄██ 
  ███    ███   ███    █▀        ▄███▀ 
 ▄███▄▄▄██▀    ███         ▀█▀▄███▀▄▄ 
▀▀███▀▀▀██▄  ▀███████████   ▄███▀   ▀ 
  ███    ██▄          ███ ▄███▀       
  ███    ███    ▄█    ███ ███▄     ▄█ 
▄█████████▀   ▄████████▀   ▀████████▀ 
"
puts " "
puts "Ingrese la URL que desea convertir en un código QR:"
url = gets.chomp

# Generar el código QR
generar_qr(url)
