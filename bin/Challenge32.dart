/*
 * Reto #32
 * EL SEGUNDO
 * Fecha publicación enunciado: 08/08/22
 * Fecha publicación resolución: 15/08/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Dado un listado de números, encuentra el SEGUNDO más grande.
 */

void main(List<String> args) {
  print(segundoMasGrande([4, 6, 1, 8, 2]));
  print(segundoMasGrande([4, 6, 8, 8, 6]));
}

int segundoMasGrande(List<int> lista) {
  lista.sort();
  // print(lista[lista.length - 2]);
  print(lista);
  return lista[lista.length - 2];
}
