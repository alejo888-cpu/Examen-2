import 'listar.dart';
import 'dart:io';

void eliminar(List<Map<String, dynamic>> peliculas) {
  listarPeliculas(peliculas);

  stdout.write("ingresa el indice de la pelicula a eliminar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? '') ;

  if (indice == null || indice < 0 || indice >= peliculas.length) {
    print('indice invalido');
    return;
  }

  peliculas.removeAt(indice);
  print('pelicula eliminada');
}