


#QR Reader 
Script en bash que captura una región de la pantalla y lee el contenido de un código QR.
## Dependencias usadas
-zbar
cat > README.md << 'EOF'



#QR Reader 
Script en bash que captura una región de la pantalla y lee el contenido de un código QR.
## Dependencias usadas
- zbar
- scrot

Instalarlas en Arch Linux
sudo pacman -S zbar scrot

## Uso

bash qr_reader.sh

Al ejecutarlo, el cursor cambiará para que selecciones con el ratón la región de la pantalla donde está el contenido para ser escaneado, y este mismo se mostrará en la terminal
