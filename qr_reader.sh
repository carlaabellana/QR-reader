#!/bin/bash
cat > qr_reader.sh << 'EOF'
#Lee un QR visible en la pantalla y muestra su contenido

#Crear un archivo temporalpara guardar la captura de pantalla
TMPFILE=$(mktemp/tmp/qr_XXXXXX.png)
#Seleccionamos la región del QR
echo "Selecciona la región con el QR Code"
scrot -s "$TMPFILE"
#Usamos zbarimg para decodificar el QR de la imagen capturada
echo "Leyendo el QR"
RESULT=$(zbarimg --raw -q $TMPFILE)
#Eliminamos el archivo temporal
rm "$TMPFILE"
#Condición por si no encontramos ningún QR en la pantalla
if [ -z "$RESULT" ]; then
	echo "No se encontró ningún QR"
exit 1
fi
#Muestra el contenido en la terminal
echo "Contenido del QR:"
echo "$RESULT"
EOF
