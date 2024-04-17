# BSZ-QR
Este código Ruby genera un código QR a partir de una URL ingresada por el usuario y lo guarda como una imagen PNG localmente

## Como funciona :
Importación de librerías: Las librerías net/http y uri son importadas para manejar solicitudes HTTP y URLs.
<br></br>
Definición del método generar_qr: Este método toma una URL como entrada y genera el código QR correspondiente. La URL es codificada para asegurarse de que sea segura en una consulta HTTP. Luego, se construye la URL de la API qrserver.com para generar el código QR con el tamaño de 150x150 píxeles y los datos de la URL codificados. Se realiza una solicitud GET a la API y se verifica si la respuesta tiene un código de estado 200, lo que indica que la solicitud fue exitosa. Si es así, la imagen del código QR se guarda como un archivo PNG localmente con el nombre "codigo_qr.png".
<br></br>
Interfaz de usuario ASCII: Se imprime un banner ASCII que dice "Generador de Código QR". Esto se hace utilizando caracteres ASCII para crear una apariencia visual atractiva en la consola.
<br></br>
Solicitud de URL al usuario: Se solicita al usuario que ingrese la URL que desea convertir en un código QR.
<br></br>
Llamada al método generar_qr: Se llama al método generar_qr con la URL ingresada por el usuario como argumento para generar el código QR.

## Resumen
Este código Ruby proporciona una interfaz sencilla para generar códigos QR a partir de URLs ingresadas por el usuario y guarda el código QR generado como una imagen PNG localmente
<br></br>
![image](https://github.com/AvastrOficial/BSZ-QR/assets/91764815/879ae0d8-65e9-4133-8ee2-137fb9e1c66b)
![image](https://github.com/AvastrOficial/BSZ-QR/assets/91764815/789dd0f7-597c-4fdd-a81d-a715ddb6fe5e)
