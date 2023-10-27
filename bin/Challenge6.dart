void main() {
  solucion(
    cadena: 'Hola mundo',
  );
}

void solucion({required String cadena}) {
  final cadenaTamano = cadena.length;
  final List<String> alreves = List.generate(cadenaTamano, (index) => '');

  for (int i = cadenaTamano - 1; i >= 0; i--) {
    alreves.add(cadena[i]);
  }
  print(alreves.join(''));
}
