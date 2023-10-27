main() {
  resolucion(cadenaTexto: 'Hola, Me llamo Hola Asael, Como estas.');
}

resolucion({required String cadenaTexto}) {
  final List<String> palabras = cadenaTexto
      .toLowerCase()
      .replaceAll(',', '')
      .replaceAll('.', '')
      .split(' ');
  //* Otra manera de limpiarlo
  // final cadenaLimpia = cadenaTexto.replaceAll(RegExp('[,.]'), '');
  // final List<String> palabras = cadenaLimpia.toLowerCase().split(' ');

  final Map<String, int> palabrasContadas = {};

  for (int i = 0; i < palabras.length; i++) {
    palabrasContadas.update(
      palabras[i],
      (value) => value + 1,
      ifAbsent: () => 1,
    );
  }
  print(palabrasContadas);
}
