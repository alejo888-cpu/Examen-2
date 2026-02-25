import 'actualizar.dart';
import 'agregar.dart';
import 'eliminar.dart';
import 'listar.dart';
import 'dart:io';

void main() {
  int opcion;
  List<Map<String, dynamic>> peliculas = [];

  do {
    print("\n========== MENÚ ==========");
    print("1. Agregar Pelicula");
    print("2. Listar Pelicula");
    print("3. Actualizar Pelicula");
    print("4. Eliminar Pelicula");
    print("0. Salir");
    stdout.write("Seleccione una opción: ");

    opcion = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    switch (opcion) {
      case 1:
        agregar(peliculas);
        break;

      case 2:
        listarPeliculas(peliculas);
        break;

      case 3:
        actualizarPelicula(peliculas);
        break;

      case 4:
        eliminar(peliculas);
        break;

      case 0:
        print("Saliendo del programa...");
        break;

      default:
        print("Opción no válida.");
    }
  } while (opcion != 0);
}