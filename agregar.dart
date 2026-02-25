import 'dart:io';

void agregar(List<Map<String, dynamic>> peliculas) {
  print('Ingrese el nombre de la pelicula: ');
  String? titulo = stdin.readLineSync();

  print('Ingrese el nombre del director: ');
  String? director = stdin.readLineSync();

  print('Ingrese el año de estreno: ');
  String? estreno = stdin.readLineSync();

  int? anio = int.tryParse(estreno ?? '');

  print('Ingrese el genero de la pelicula: ');
  String? genero = stdin.readLineSync();

  if (titulo == null || titulo.isEmpty ||
      director == null || director.isEmpty ||
      genero == null || genero.isEmpty ||
      anio == null) {
    print('\nError: Datos inválidos.');
    return;
  }

  peliculas.add({
    'titulo': titulo,
    'director': director,
    'anio': anio,
    'genero': genero,
  });

  print('\nPelícula agregada correctamente.');
}