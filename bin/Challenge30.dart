/*
 * Reto #30
 * MARCO DE PALABRAS
 * Fecha publicación enunciado: 26/07/22
 * Fecha publicación resolución: 01/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que reciba un texto y muestre cada palabra en una línea, formando
 * un marco rectangular de asteriscos.
 * - ¿Qué te parece el reto? Se vería así:
 *   **********
 *   * ¿Qué   *
 *   * te     *
 *   * parece *
 *   * el     *
 *   * reto?  *
 *   **********
 */

void main() {
  print(dividirAndLongitud(texto: 'Qué te parece el reto?'));
}

String dividirAndLongitud({required String texto}) {
  final List<String> palabras = texto.split(' ');
  int longitud = 0;
  for (int i = 0; i < palabras.length; i++) {
    if (palabras[i].length > longitud) {
      longitud = palabras[i].length;
    }
  }
  final String cuadradoCadena =
      impresionCuadro(palabras: palabras, longitud: longitud);
  return cuadradoCadena;
}

String impresionCuadro(
    {required List<String> palabras, required int longitud}) {
  String cuadradoCadena = '';
  for (int i = 0; i < palabras.length; i++) {
    if (i == 0) {
      cuadradoCadena += '${'*' * (longitud + 5)}\n';
    }
    cuadradoCadena +=
        '* ${palabras[i]} ${' ' * (longitud - palabras[i].length)} *\n';
    if (i == palabras.length - 1) {
      cuadradoCadena += '${'*' * (longitud + 5)}\n';
    }
  }
  return cuadradoCadena;
}
