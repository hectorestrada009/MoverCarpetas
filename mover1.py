import os
import shutil
from datetime import datetime

def renombrar_y_mover_carpeta(origen, destino):
    try:
        # Verifica si la carpeta de destino ya existe
        if os.path.exists(destino):
            # Renombra la carpeta existente con un sufijo de fecha y hora
            fecha_hora = datetime.now().strftime("%Y%m%d_%H%M%S")
            nuevo_nombre = f'{destino}.{fecha_hora}'
            print(f"Renombrando carpeta existente a: {nuevo_nombre}")
            os.rename(destino, nuevo_nombre)
        
        # Mueve la carpeta de origen a la nueva ubicación
        print(f"Moviendo carpeta de {origen} a {destino}")
        shutil.move(origen, destino)
        print("Operación completada con éxito.")
    except PermissionError as e:
        print(f"Error: No se pudo acceder a la carpeta. Asegúrate de que no esté en uso por otro proceso. Detalles: {e}")
    except Exception as e:
        print(f"Error inesperado: {e}")

if __name__ == "__main__":
    origen = '/Users/Hector Estrada/Desktop/origen/respaldoTEMPO'
    destino = '/Users/Hector Estrada/Desktop/destino/respaldos'
    renombrar_y_mover_carpeta(origen, destino)
