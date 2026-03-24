#!/bin/bash
#qr_reader.sh
#Lee QR visible en la pantalla y muestra su contenido
#Elimina captura anterior
rm -f /tmp/qr_captura.png

#Captura pantalla completa
echo "Capturando la pantalla"
scrot /tmp/qr_captura.png

#zbarimg para decodificar el QR de la imagen capturada
RESULT=$(zbarimg --raw -q /tmp/qr_captura.png)

#Elimina archivo temporal
rm -f /tmp/qr_captura.png

#Condición si no encuentra ningún QR
if [ -z "$RESULT" ]; then
echo "No se ha encontrado un QR"
exit 1
fi

echo "Contenido del QR:"

echo "$RESULT"
EOF
