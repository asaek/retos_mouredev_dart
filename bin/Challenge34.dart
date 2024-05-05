/*
 * Reto #34
 * LOS NÚMEROS PERDIDOS
 * Fecha publicación enunciado: 22/08/22
 * Fecha publicación resolución: 29/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Dado un array de enteros ordenado y sin repetidos, crea una función que calcule
 * y retorne todos los que faltan entre el mayor y el menor.
 * - Lanza un error si el array de entrada no es correcto.
 */

void main() {
  // print(numerosPerdidos(numeros: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
  // print(numerosPerdidos(numeros: [1, 3, 5]));
  print(numerosPerdidos(numeros: [1, 3, -5]));
}

List<int> numerosPerdidos({required List<int> numeros}) {
  numeros = numeros.toSet().toList();
  numeros.sort();
  final int primerNumero = numeros.first + 1;
  final int ultimoNumero = numeros.last - 1;
  final List<int> todosLosNumeros = List.generate(
    ultimoNumero - primerNumero + 1,
    (index) => primerNumero + index,
  );

  final List<int> numerosNoEstan =
      todosLosNumeros.where((element) => !numeros.contains(element)).toList();
  return numerosNoEstan;
}
