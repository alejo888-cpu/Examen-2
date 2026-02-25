import 'dart:io';
import 'listar.dart';

void actualizarPelicula(List<Map<String, dynamic>> peliculas) {
  if (peliculas.isEmpty) {
    print('No hay películas para actualizar.');
    return;
  }

  listarPeliculas(peliculas);

  print('Ingrese el índice de la película a actualizar:');
  int? indice = int.tryParse(stdin.readLineSync() ?? '');

  if (indice == null || indice < 0 || indice >= peliculas.length) {
    print('Índice inválido.');
    return;
  }

  print('Nuevo título (Enter para dejar igual):');
  String? titulo = stdin.readLineSync();

  print('Nuevo director (Enter para dejar igual):');
  String? director = stdin.readLineSync();

  print('Nuevo año (Enter para dejar igual):');
  String? anioTexto = stdin.readLineSync();

  print('Nuevo género (Enter para dejar igual):');
  String? genero = stdin.readLineSync();

  if (titulo != null && titulo.trim().isNotEmpty) {
    peliculas[indice]['titulo'] = titulo.trim();
  }

  if (director != null && director.trim().isNotEmpty) {
    peliculas[indice]['director'] = director.trim();
  }

  if (anioTexto != null && anioTexto.trim().isNotEmpty) {
    int? anio = int.tryParse(anioTexto);
    if (anio != null) {
      peliculas[indice]['anio'] = anio;
    }
  }

  if (genero != null && genero.trim().isNotEmpty) {
    peliculas[indice]['genero'] = genero.trim();
  }

  print('Película actualizada correctamente.');
}