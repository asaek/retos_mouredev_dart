/*
 * Reto #29
 * ORDENA LA LISTA
 * Fecha publicación enunciado: 18/07/22
 * Fecha publicación resolución: 26/07/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que ordene y retorne una matriz de números.
 * - La función recibirá un listado (por ejemplo [2, 4, 6, 8, 9]) y un parámetro adicional
 *   "Asc" o "Desc" para indicar si debe ordenarse de menor a mayor o de mayor a menor.
 * - No se pueden utilizar funciones propias del lenguaje que lo resuelvan automáticamente.
 */

void main() {
  print(ordenamiento(numeros: [4, 6, 1, 8, 2], orden: false));
}

List<int> ordenamiento({required List<int> numeros, required bool orden}) {
  if (orden) {
    for (int i = 0; i < numeros.length; i++) {
      for (int j = i + 1; j < numeros.length; j++) {
        // print('i: ${numeros[i]}, j: ${numeros[j]}');
        if (numeros[i] > numeros[j]) {
          final int temp = numeros[i];

          numeros[i] = numeros[j];
          numeros[j] = temp;
          // print('Entro Acomodo i: ${numeros[i]}, j: ${numeros[j]}');
        }
        // print(numeros);
      }
    }
  } else {
    for (int i = 0; i < numeros.length; i++) {
      for (int j = i + 1; j < numeros.length; j++) {
        if (numeros[i] < numeros[j]) {
          final int temp = numeros[i];
          numeros[i] = numeros[j];
          numeros[j] = temp;
        }
      }
    }
  }
  return numeros;
}

// void main() {
//   print(ordenamiento(numeros: [4, 6, 1, 8, 2], orden: true));  // Ascendente
//   print(ordenamiento(numeros: [4, 6, 1, 8, 2], orden: false)); // Descendente
// }

// List<int> ordenamiento({required List<int> numeros, required bool orden}) {
//   numeros.sort();
//   if (!orden) {
//     numeros = numeros.reversed.toList();
//   }
//   return numeros;
// }
