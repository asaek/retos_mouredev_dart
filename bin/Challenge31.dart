/*
 * Reto #31
 * AÑOS BISIESTOS
 * Fecha publicación enunciado: 01/08/22
 * Fecha publicación resolución: 08/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Crea una función que imprima los 30 próximos años bisiestos siguientes a uno dado.
 * - Utiliza el menor número de líneas para resolver el ejercicio.
 */

void main() {
  anosBisiestos(ano: 2024);
}

void anosBisiestos({required int ano}) {
  for (int i = ano; i < ano + 31; i++) {
    if (i % 4 == 0 && (i % 100 != 0 || i % 400 == 0)) {
      print(i);
    }
  }
}
