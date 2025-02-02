import shutil
import os
from datetime import datetime

rutaOrigen = "/Users/Hector Estrada/Desktop/origen/prueba.txt"
rutaDestino = "/Users/Hector Estrada/Desktop/destino/prueba.txt"

if os.path.exists(rutaDestino):
    fecha_hora = datetime.now().strftime("%Y%m%d_%H%M%S")
    nuevo_nombre = f'{rutaDestino}.{fecha_hora}.txt'
    os.rename(rutaDestino, nuevo_nombre)
    shutil.move(rutaOrigen, rutaDestino)
